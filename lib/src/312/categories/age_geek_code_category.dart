// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Class that builds [DressGeekCodeCategory]s.
 *
 * Adds 2 variable setting methods:
 *
 * * [crossDresser]
 * * [sameClothes]
 */
class AgeGeekCodeCategoryBuilder extends GeekCodeCategoryBuilder {
  int _age;

  /**
   * Creates a new [DressGeekCodeCategoryBuilder] object.
   *
   * See [GeekCodeCategoryBuilder.GeekCodeCategoryBuilder] for a description of the parameters.
   */
  AgeGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade) : super(code, minGrade, maxGrade);

  /**
   * Original documentation:
   *
   *     In addition, if you wish to give your exact age, you can place the number after the 'a' identifier. For example: a42
   */
  AgeGeekCodeCategory age(int age) {
    this._age = age;
    return subValidate(null, false, false);
  }

  /**
   * Returns a [DressGeekCodeCategory] without performing any additional validations.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  AgeGeekCodeCategory subValidate(GeekCodeGrade grade, bool refuse, bool noKnowledge) => new AgeGeekCodeCategory(this, grade);
}

/**
 * Original documentation:
 *
 *     It is said that "clothes make the man". Well, I understood that I was made by a mommy and a daddy (and there's even a category to describe the process below!). Maybe the people who made up that saying aren't being quite that literal...
 */
class AgeGeekCodeCategory extends GeekCodeCategory {
  final AgeGeekCodeCategoryBuilder _builder;

  /**
   * See [GeekCodeCategory.GeekCodeCategory] for a description of the parameters.
   */
  AgeGeekCodeCategory(AgeGeekCodeCategoryBuilder builder, GeekCodeGrade grade)
      : this._builder = builder,
        super(builder, grade);

  String toString() => super.toString() + "${_builder._age}";
}
