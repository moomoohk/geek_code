// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:html";
import "dart:async";
import "main.dart";
import "package:geek_code/geek_code.dart";
import "package:geek_code/geek_code_312.dart";

Timer notificationTimer;

DivElement loading = querySelector("div#loading");
TextAreaElement output = querySelector("#output");
DivElement notification = querySelector("#notification");
DivElement toggleButtons = querySelector("#toggleButtons");
ButtonElement clearButton = querySelector("#clear");
ButtonElement toggleMenuButton = querySelector("#toggleMenu");

List<int> keys = [
  KeyCode.RIGHT,
  KeyCode.LEFT,
  KeyCode.UP,
  KeyCode.DOWN,
  KeyCode.HOME,
  KeyCode.INSERT,
  KeyCode.INSERT,
  KeyCode.BACKSPACE,
  KeyCode.DELETE,
  KeyCode.END,
  KeyCode.ONE,
  KeyCode.TWO,
  KeyCode.THREE,
  KeyCode.FOUR,
  KeyCode.FIVE,
  KeyCode.SIX,
  KeyCode.SEVEN,
  KeyCode.EIGHT,
  KeyCode.NINE,
  KeyCode.ZERO,
  KeyCode.NUM_ONE,
  KeyCode.NUM_TWO,
  KeyCode.NUM_THREE,
  KeyCode.NUM_FOUR,
  KeyCode.NUM_FIVE,
  KeyCode.NUM_SIX,
  KeyCode.NUM_SEVEN,
  KeyCode.NUM_EIGHT,
  KeyCode.NUM_NINE,
  KeyCode.NUM_ZERO
];

void buildUI() {
  if (window.innerWidth > 768) querySelector("#wrapper").classes.add("showMenu");

  buildTypes();
  buildSections();
  buildCategories();
  addListeners();

  showNotification("Loaded!");
  loading
    ..style.opacity = "0"
    ..onTransitionEnd.first.then((_) => loading.remove());
}

void buildTypes() {
  FormElement typesForm = new FormElement()
    ..id = "typesForm"
    ..className = "slides";
  HtmlElement typesContainer = querySelector("section#types")
    ..children.add(new HeadingElement.h2()
      ..text = "Types"
      ..className = "collapse")
    ..children.add(typesForm);
  for (GeekCodeType type in allTypes) {
    typesForm.children
      ..add(new InputElement(type: "checkbox")
        ..id = type.toString()
        ..className = "type"
        ..name = type.toString()
        ..value = type.toString())
      ..add(new LabelElement()
        ..htmlFor = type.toString()
        ..text = "${type.toString()}: ${type.description}")
      ..add(new BRElement());
  }
}

void buildSections() {
  HtmlElement sectionContainer = querySelector("section#sections");
  for (String section in sections.keys) {
    sectionContainer.children
      ..add(new HeadingElement.h2()
        ..className = "collapse section"
        ..id = section.toLowerCase()
        ..text = section)
      ..add(new FormElement()
        ..className = "slides categoryForm"
        ..id = "${section.toLowerCase()}Form");
  }
}

void buildCategories() {
  for (String section in sections.keys) {
    FormElement form = querySelector("form#${section.toLowerCase()}Form");
    for (GeekCodeCategoryBuilder builder in sections[section]) {
      SelectElement gradeSelect = new SelectElement()
        ..className = "grade"
        ..attributes["name"] = builder.code;
      for (int i = builder.maxGrade; i >= builder.minGrade; i--) {
        String grade = "";
        if (i > 0) for (int j = 1; j <= i; j++) grade += "+";
        else if (i < 0) for (int j = -1; j >= i; j--) grade += "-";
        gradeSelect.children.add(new OptionElement(value: "$i", selected: i == 0)..text = grade);
      }
      SpanElement codeSpan = new SpanElement()
        ..text = builder.code
        ..className = "code";
      DivElement modifiersContainer = new DivElement();
      form.children.add(new DivElement()
        ..className = "category"
        ..children.add(new HeadingElement.h3()..text = builder.fullName)
        ..children.add(codeSpan)
        ..children.add(new ButtonElement()
          ..className = "addCategory"
          ..attributes["name"] = builder.code
          ..text = "Add category")
        ..children.add(new DivElement()
          ..className = "gradeContainer"
          ..attributes["name"] = builder.code
          ..children.add(new TableRowElement()
            ..className = "gradeRow"
            ..children.add(gradeSelect)
            ..children.add(modifiersContainer
              ..className = "modifiersContainer"
              ..attributes["name"] = builder.code
              ..children.add(new InputElement(type: "radio")
                ..className = "exclusive modifier"
                ..id = "${builder.code}?"
                ..name = builder.code
                ..value = "noKnowledge")
              ..children.add(new LabelElement()
                ..htmlFor = "${builder.code}?"
                ..attributes["name"] = builder.code
                ..text = "?")
              ..children.add(new InputElement(type: "radio")
                ..className = "exclusive modifier"
                ..id = "${builder.code}!"
                ..name = builder.code
                ..value = "refuse")
              ..children.add(new LabelElement()
                ..htmlFor = "${builder.code}!"
                ..attributes["name"] = builder.code
                ..text = "!"))
            ..children.add(new ButtonElement()
              ..className = "removeModifiers"
              ..name = builder.code
              ..text = "Remove modifiers"))
          ..children.add(new TableRowElement()
            ..className = "gradeRow"
            ..children.add(new ButtonElement()
              ..className = "removeCategory"
              ..name = builder.code
              ..text = "Remove category"))));
      if (builder is ExtremeGenericGeekCodeCategoryBuilder) modifiersContainer.children
        ..add(new InputElement(type: "radio")
          ..name = builder.code
          ..className = "exclusive modifier"
          ..id = "${builder.code}Extreme"
          ..value = "1")
        ..add(new LabelElement()
          ..htmlFor = "${builder.code}Extreme"
          ..text = "Extreme");
      switch (builder.code) {
        case "d":
          modifiersContainer.children
            ..add(new InputElement(type: "radio")
              ..className = "exclusive modifier"
              ..id = "dx"
              ..name = "d"
              ..value = "crossDresser")
            ..add(new LabelElement()
              ..htmlFor = "dx"
              ..text = "x")
            ..add(new InputElement(type: "radio")
              ..className = "exclusive modifier"
              ..id = "dpu"
              ..name = "d"
              ..value = "sameClothes")
            ..add(new LabelElement()
              ..htmlFor = "dpu"
              ..text = "pu");
          break;
        case "s":
          modifiersContainer.children
            ..insert(0, new SelectElement()
              ..className = "secondary"
              ..name = "s"
              ..id = "shapeRoundness"
              ..children.add(new OptionElement(value: "2")..text = "++")
              ..children.add(new OptionElement(value: "1")..text = "+")
              ..children.add(new OptionElement(value: "0", selected: true)..text = "")
              ..children.add(new OptionElement(value: "-1")..text = "-")
              ..children.add(new OptionElement(value: "-2")..text = "--")
              ..children.add(new OptionElement(value: "-3")..text = "---"))
            ..insert(0, new SpanElement()
              ..text = ":"
              ..className = "secondarySeparator");
          break;
        case "a":
          gradeSelect.children.insert(0, new OptionElement(value: "customAge")..text = "Custom age...");
          modifiersContainer.children
            ..add(new InputElement(type: "text")
              ..name = "a"
              ..id = "customAge"
              ..placeholder = "Numeric age"
              ..onKeyDown.listen((KeyboardEvent e) {
                if (!e.metaKey && !keys.contains(e.keyCode)) e.preventDefault();
                generate();
              })
              ..onPaste.listen((Event e) => e.preventDefault())
              ..onKeyUp.listen((KeyboardEvent e) {
                if (e.keyCode == KeyCode.ESC) (e.target as InputElement).value = "";
                generate();
              }))
            ..add(new ButtonElement()
              ..name = "a"
              ..className = "showGrade"
              ..text = "Grade");
          break;
        case "U":
          SelectElement OSes = new SelectElement()
            ..name = "U"
            ..className = "modifier"
            ..id = "unixOS"
            ..children.add(new OptionElement(selected: true)
              ..text = "Select specific OS..."
              ..disabled = true)
            ..children.add(new OptionElement(value: "B")..text = "BSD")
            ..children.add(new OptionElement(value: "L")..text = "Linux")
            ..children.add(new OptionElement(value: "U")..text = "Ultrix")
            ..children.add(new OptionElement(value: "A")..text = "AIX")
            ..children.add(new OptionElement(value: "V")..text = "SysV")
            ..children.add(new OptionElement(value: "H")..text = "HPUX")
            ..children.add(new OptionElement(value: "I")..text = "IRIX")
            ..children.add(new OptionElement(value: "O")..text = "OSF/1")
            ..children.add(new OptionElement(value: "S")..text = "Sun OS/Solaris")
            ..children.add(new OptionElement(value: "C")..text = "SCO Unix")
            ..children.add(new OptionElement(value: "X")..text = "NeXT")
            ..children.add(new OptionElement(value: "*")..text = "[Other]")
            ..onChange.listen((Event e) {
              InputElement selected = (querySelector("input[type=radio][name='U']:checked") as InputElement);
              if (selected != null) selected.checked = false;
              gradeSelect.disabled = false;
              codeSpan.text = "U" + (e.target as SelectElement).value;
              generate();
            });
          querySelectorAll("input[type=radio][name='U']").onClick.listen((_) {
            OSes.selectedIndex = 0;
            codeSpan.text = "U";
            generate();
          });
          querySelector("button.removeModifiers[name='U']").onClick.listen((_) {
            OSes.selectedIndex = 0;
            codeSpan.text = "U";
            generate();
          });
          modifiersContainer.children.add(OSes);
          break;
        case "r":
          modifiersContainer.children
            ..add(new InputElement(type: "radio")
              ..className = "exclusive modifier"
              ..id = "dumped"
              ..name = "r"
              ..value = "dumped")
            ..add(new LabelElement()
              ..htmlFor = "dumped"
              ..text = "%");
          break;
        case "z":
          SelectElement genders = new SelectElement()
            ..name = "z"
            ..className = "modifier"
            ..id = "genders"
            ..children.add(new OptionElement(selected: true)
              ..text = "Select gender..."
              ..disabled = true)
            ..children.add(new OptionElement(value: "x")..text = "Female")
            ..children.add(new OptionElement(value: "y")..text = "Male")
            ..onChange.listen((Event e) {
              codeSpan.text = (e.target as SelectElement).value;
            });
          querySelector("button.removeModifiers[name='z']").onClick.listen((_) {
            genders.selectedIndex = 0;
            codeSpan.text = "z";
          });
          modifiersContainer.children.add(genders);
          break;
      }
    }
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

void clear() {
  if (output.text.length > 0) {
    for (InputElement e in querySelector("form#typesForm").children.where((Element e) => e is InputElement && e.type == "checkbox" && e.checked)) e.click();
    for (SelectElement grade in querySelectorAll(".grade,.secondary")) grade.selectedIndex = grade.options.indexOf(grade.options.firstWhere((OptionElement option) => option.value == "0"));
    for (ButtonElement removeModifiers in querySelectorAll(".removeModifiers")) removeModifiers.click();
    for (ButtonElement button in querySelectorAll("button.removeCategory")) button.click();
    showNotification("Cleared");
  }
}

void addListeners() {
  window.onResize.listen((_) {
    if (window.innerWidth > 768) querySelector("#wrapper").classes.add("showMenu");
    else querySelector("#wrapper").classes.remove("showMenu");
  });

  querySelectorAll("button").onClick.listen((Event e) => e.preventDefault());

  querySelectorAll("input[type=checkbox]").onChange.listen((_) => generate());

  querySelectorAll(".modifier").onChange.listen((Event e) {
    HtmlElement target = e.target as HtmlElement;
    SelectElement dropdown = querySelector("select.grade[name='${target.attributes["name"]}']") as SelectElement;
    SelectElement secondary = querySelector("select.secondary[name='${target.attributes["name"]}']") as SelectElement;
    bool exclusive = target.classes.contains("exclusive");
    if (!exclusive) for (HtmlElement modifier in querySelector(".modifier[name='${target.attributes["name"]}']")) if (modifier.classes.contains("exclusive")) {
      exclusive = true;
      break;
    }
    if (exclusive) {
      dropdown.disabled = true;
      if (secondary != null) secondary.disabled = true;
    } else {
      dropdown.disabled = false;
      if (secondary != null) secondary.disabled = false;
    }
    querySelector("button.removeModifiers[name='${target.attributes["name"]}']").style.opacity = "1";
    generate();
  });

  querySelectorAll("button.addCategory").onClick.listen((Event e) {
    Element target = e.target as Element;
    target.parent.style.height = "75px";
    String category = target.attributes["name"];
    target
      ..style.opacity = "0"
      ..onTransitionEnd.first.then((_) {
        querySelector("div.gradeContainer[name='$category']").style.opacity = "1";
        target.style.display = "none";
        generate();
      });
  });

  querySelectorAll("button.removeCategory").onClick.listen((Event e) {
    Element target = e.target as Element;
    target.parent.parent.parent.style.removeProperty("height");
    String category = target.attributes["name"];
    querySelector("div.gradeContainer[name='$category']")
      ..style.opacity = "0"
      ..onTransitionEnd.first.then((_) {
        querySelector("button.addCategory[name='$category']").style
          ..display = "inline-block"
          ..opacity = "1";
        generate();
      });
  });

  querySelectorAll("button.removeModifiers").onClick.listen((Event e) {
    ButtonElement target = e.target as ButtonElement;
    target.style.opacity = "0";
    InputElement selectedModifier = (querySelector("input[name='${target.name}']:checked") as InputElement);
    if (selectedModifier != null) selectedModifier.checked = false;
    (querySelector("select.grade[name='${target.name}']") as SelectElement).disabled = false;
    SelectElement secondary = querySelector("select.secondary[name='${target.name}']") as SelectElement;
    if (secondary != null) secondary.disabled = false;
  });

  querySelectorAll("button.showGrade").onClick.listen((Event e) {
    ButtonElement target = e.target as ButtonElement;
    SelectElement select = querySelector("select[name='${target.name}']") as SelectElement;
    select.selectedIndex = select.options.indexOf(select.options.firstWhere((OptionElement option) => option.value == "0"));
    querySelectorAll("select[name='${target.name}'],input[name=${target.name}],input[name='${target.name}']+label").style.display = "inline-block";
    querySelectorAll("button.showGrade[name='${target.name}'],input#customAge").style.display = "none";
  });

  querySelectorAll("select.grade, select.secondary").onChange.listen((Event e) {
    SelectElement target = e.target as SelectElement;
    if (target.name == "a") {
      if (target.options[target.selectedIndex].value == "customAge") {
        querySelectorAll("select[name=${target.name}],input[name=${target.name}],input[name=${target.name}]+label").style.display = "none";
        querySelectorAll("button.showGrade[name=${target.name}],input#customAge").style.display = "inline-block";
      }
    }
    generate();
  });

  for (HeadingElement heading in querySelectorAll("h2.collapse")) {
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

  querySelectorAll("button").onClick.listen((_) => generate());
}
