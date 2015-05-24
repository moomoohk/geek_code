// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import "dart:html";
import "package:geek_code/geek_code.dart";
import "package:geek_code/geek_code_312.dart";
import 'ui.dart';

GeekCode code;

Map sections = {
  "Appearance": [d, s, a],
  "Computers": [C, U, P, L, E, W, N, o, K, O, M, V],
  "Politics": [PS, PE, Y, PGP],
  "Entertainment": [t, BABYLON5, X, R, tv, b, DI, D, GCode],
  "Lifestyle": [e, h, r, z]
};

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

void main() {
  buildUI();
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
  } catch (error, stackTrace) {
    print("$error\n$stackTrace");
    output.style.color = "red";
    output.text = "Error:\n" + e.toString();
  }
}

List<GeekCodeType> getTypes() {
  List<String> selectedTypeStrings = querySelector("form#typesForm").children.where((Element e) => e is InputElement && e.type == "checkbox" && e.checked).map((InputElement e) => e.value).toList();
  return allTypes.where((GeekCodeType type) => selectedTypeStrings.contains(type.toString())).toList();
}

List<GeekCodeCategory> getCategories() {
  return querySelectorAll("select.grade")
      .where((SelectElement e) => e.parent.parent.style.opacity == "1" && e.parent.parent.style.opacity != "" && !e.classes.contains("secondary"))
      .map((SelectElement e) {
    GeekCodeCategoryBuilder builder = getBuilder(e.name);
    InputElement selectedModifier = (querySelector("input[type=radio][name='${e.name}']:checked") as InputElement);
    InputElement extremeInput = querySelector("input[type=radio][id='${e.name}Extreme']");
    if (e.name == "s") {
      int roundnessGrade = int.parse((querySelector("select#shapeRoundness") as SelectElement).value);
      (builder as ShapeGeekCodeCategoryBuilder).roundness(new BasicGeekCodeCategoryBuilder().grade(new GeekCodeGrade(roundnessGrade)));
    }
    if (e.name == "a") {
      InputElement ageInput = querySelector("input#customAge") as InputElement;
      if (ageInput.style.opacity == "1") {
        if (ageInput.value.length > 0) {
          int age = int.parse(ageInput.value);
          return (builder as AgeGeekCodeCategoryBuilder).age(age);
        } else return builder.grade(new GeekCodeGrade(0));
      }
    }
    if (e.name == "U") builder = getBuilder(e.name + (querySelector("select#unixOS") as SelectElement).value);
    if (e.name == "z") {
      SelectElement genderSelect = querySelector("select#genders");
      if (genderSelect.value == "x") (builder as SexGeekCodeCategoryBuilder).female();
      if (genderSelect.value == "y") (builder as SexGeekCodeCategoryBuilder).male();
    }
    if (extremeInput != null && extremeInput.checked) return (builder as ExtremeGenericGeekCodeCategoryBuilder).extreme(int.parse(extremeInput.value));
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
            case "r":
              if (modifier == "dumped") (builder as RelationshipsGeekCodeCategoryBuilder).dumped();
              break;
          }
      }
    }
    return builder.grade(new GeekCodeGrade(int.parse(e.value)));
  }).toList();
}
