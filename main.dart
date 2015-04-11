// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:html";
import "dart:async";
import "package:geek_code/geek_code.dart";
import "package:geek_code/geek_code_312.dart";

List<BasicGeekCodeCategoryBuilder> builders = [d, s, a, C, U, P, L, E, W, N, o, K, w, O, M, V, PS, PE, Y, PGP, t, BABYLON5, X, R, tv, b, DI, D, GCode, e, h, r, z];

GeekCode code;

Timer notificationTimer;

Map<String, HeadingElement> headings = {"types": querySelector("h2#types"), "appearance": querySelector("h2#appearance")};

Map<String, FormElement> forms = {"types": querySelector("form#typesForm"), "categories": querySelector("form#categoriesForm")};

DivElement loading = querySelector("div#loading");
TextAreaElement output = querySelector("#output");
DivElement notification = querySelector("#notification");
DivElement toggleButtons = querySelector("#toggleButtons");
ButtonElement clearButton = querySelector("#clear");
ButtonElement toggleMenuButton = querySelector("#toggleMenu");

void main() {
  if (window.innerWidth > 768) querySelector("#wrapper").classes.add("showMenu");
  window.onResize.listen((_) {
    if (window.innerWidth > 768) querySelector("#wrapper").classes.add("showMenu");
    else querySelector("#wrapper").classes.remove("showMenu");
  });

  querySelectorAll("input[type=checkbox]").onChange.listen((_) => generate());
  querySelectorAll("input[type=radio]").onChange.listen((Event e) {
    InputElement radio = e.target as InputElement;
    SelectElement dropdown = querySelector("select.grade[name=" + radio.name + "]") as SelectElement;
    SelectElement secondary = querySelector("select.grade.secondary[name=" + radio.name + "]") as SelectElement;
    if (radio.value == "noKnowledge" || radio.value == "refuse") {
      dropdown.disabled = true;
      if (secondary != null) secondary.disabled = true;
    } else {
      dropdown.disabled = false;
      if (secondary != null) secondary.disabled = false;
    }
    querySelector("button.removeModifiers[name=" + radio.name + "]").style.display = "inline-block";
    generate();
  });

  querySelectorAll("button.addCategory").onClick.listen((Event e) {
    e.preventDefault();
    Element target = e.target as Element;
    String category = target.attributes["name"];
    target.style.display = "none";
    querySelector("div.gradeContainer[name=" + category + "]").style.display = "inline-table";
    generate();
  });

  querySelectorAll("button.removeCategory").onClick.listen((Event e) {
    e.preventDefault();
    Element target = e.target as Element;
    String category = target.attributes["name"];
    querySelector("div.gradeContainer[name=" + category + "]").style.display = "none";
    querySelector("button.addCategory[name=" + category + "]").style.display = "inline-block";
    generate();
  });

  querySelectorAll("button.removeModifiers").onClick.listen((Event e) {
    e.preventDefault();
    ButtonElement target = e.target as ButtonElement;
    target.style.display = "none";
    InputElement selectedModifier = (querySelector("input[type=radio][name=" + target.name + "]:checked") as InputElement);
    selectedModifier.checked = false;
    (querySelector("select.grade[name=" + target.name + "]") as SelectElement).disabled = false;
    SelectElement secondary = querySelector("select.grade.secondary[name=" + target.name + "]") as SelectElement;
    if (secondary != null) secondary.disabled = false;
    generate();
  });

  querySelectorAll("select.grade").onChange.listen((_) => generate());

  for (HeadingElement heading in headings.values) {
    ButtonElement toggle = new ButtonElement()
      ..text = "Show ${heading.text.toLowerCase()}"
      ..className = "sidebarButton"
      ..onClick.listen((_) => heading.click());
    heading.onClick.listen((Event e) {
      Element next = (e.target as Element).nextElementSibling;
      if (next.style.maxHeight == "0px" || next.style.maxHeight == "") {
        toggle.text = "Hide ${heading.text.toLowerCase()}";
        next.style
          ..maxHeight = "1000px"
          ..height = "auto"
          ..paddingTop = "5px"
          ..paddingBottom = "5px";
      } else {
        toggle.text = "Show ${heading.text.toLowerCase()}";
        next.style
          ..paddingTop = "0px"
          ..paddingBottom = "0px"
          ..maxHeight = "0";
      }
    });
    toggleButtons.children.add(toggle);
  }

  output.onMouseDown.listen((MouseEvent e) {
    e.preventDefault();
    output.select();
  });
  output.onCopy.listen((_) {
    if (output.text.length > 0) {
      showNotification("Copied to clipboard");
    } else showNotification("Nothing to copy!");
  });

  clearButton.onClick.listen((_) => clear());

  toggleMenuButton.onClick.listen((_) {
    Element wrapper = querySelector("#wrapper");
    if (wrapper.classes.contains("showMenu")) wrapper.classes.remove("showMenu");
    else wrapper.classes.add("showMenu");
  });
  showNotification("Loaded!");
  loading
    ..style.opacity = "0"
    ..onTransitionEnd.first.then((_) => loading.remove());
  generate();
}

void generate() {
  try {
    output.style.color = "initial";
    List<GeekCodeType> types = getTypes();
    List<GeekCodeCategory> categories = getCategories();
    code = new GeekCodeV312(types);
    for (GeekCodeCategory category in categories) code.addCategory(category);
    output.text = code.generate();
  } catch (e) {
    output.style.color = "red";
    output.text = "Error:\n" + e.toString();
  }
}

List<GeekCodeType> getTypes() {
  List<String> selectedTypeStrings = forms["types"].children.where((Element e) => e is InputElement && e.type == "checkbox" && e.checked).map((InputElement e) => e.value).toList();
  return allTypes.where((GeekCodeType type) => selectedTypeStrings.contains(type.toString())).toList();
}

List<GeekCodeCategory> getCategories() {
  return querySelectorAll("select.grade").where((SelectElement e) => e.parent.style.display != "none" && e.parent.style.display != "" && !e.classes.contains("secondary")).map((SelectElement e) {
    GeekCodeCategoryBuilder builder = getBuilder(e.name);
    InputElement selectedModifier = (querySelector("input[type=radio][name=" + e.name + "]:checked") as InputElement);
    if (e.name == "s") {
      int roundnessGrade = int.parse((querySelector("select#shapeRoundness") as SelectElement).value);
      (builder as ShapeGeekCodeCategoryBuilder).roundness(new BasicGeekCodeCategoryBuilder().grade(new GeekCodeGrade(roundnessGrade)));
    }
    if (selectedModifier != null) {
      String modifier = selectedModifier.value;
      switch (modifier) {
        case "noKnowledge":
          return builder.noKnowledge();
        case "refuse":
          return builder.refuse();
        default:
          switch (e.name) {
            case "d":
              switch (modifier) {
                case "sameClothes":
                  (builder as DressGeekCodeCategoryBuilder).sameClothes();
                  break;
                case "crossDresser":
                  (builder as DressGeekCodeCategoryBuilder).crossDresser();
                  break;
              }
              break;
          }
      }
    }
    return builder.grade(new GeekCodeGrade(int.parse(e.value)));
  }).toList();
}

void clear() {
  if (output.text.length > 0) {
    for (InputElement e in forms["types"].children.where((Element e) => e is InputElement && e.type == "checkbox" && e.checked)) e.click();
    for (ButtonElement button in querySelectorAll("button.removeCategory")) button.click();
    showNotification("Cleared");
  }
}

void showNotification(String text, [int duration = 3]) {
  if (notificationTimer != null) notificationTimer.cancel();
  notification.text = text;
  notification.style
    ..backgroundColor = "lightGray"
    ..maxHeight = "1000px"
    ..height = "auto"
    ..paddingTop = "5px"
    ..paddingBottom = "5px";
  notificationTimer = new Timer(new Duration(seconds: duration), () {
    notification.style
      ..backgroundColor = "gray"
      ..paddingTop = "0px"
      ..paddingBottom = "0px"
      ..maxHeight = "0";
  });
}

void populateBuilders() {
  for (BasicGeekCodeCategoryBuilder builder in builders) {
    forms["categories"].children.add(new InputElement(type: "checkbox"));
  }
}

List<GeekCodeType> allTypes = [
  G312.AT,
  G312.B,
  G312.C,
  G312.CA,
  G312.CC,
  G312.CM,
  G312.CS,
  G312.E,
  G312.ED,
  G312.FA,
  G312.G,
  G312.H,
  G312.IT,
  G312.J,
  G312.L,
  G312.LS,
  G312.M,
  G312.MC,
  G312.MD,
  G312.MU,
  G312.O,
  G312.P,
  G312.PA,
  G312.S,
  G312.SS,
  G312.TW,
  G312.U,
  G.NO_QUALIFICATIONS
];
