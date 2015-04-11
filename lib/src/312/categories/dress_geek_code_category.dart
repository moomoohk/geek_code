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
class DressGeekCodeCategoryBuilder extends GeekCodeCategoryBuilder {
  bool _crossDresser, _sameClothes;

  /**
   * Creates a new [DressGeekCodeCategoryBuilder] object.
   *
   * See [GeekCodeCategoryBuilder.GeekCodeCategoryBuilder] for a description of the parameters.
   */
  DressGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade)
      : _crossDresser = false,
        _sameClothes = false,
        super(code, minGrade, maxGrade);

  /**
   * Sets the "cross dresser" variable for this category.
   */
  DressGeekCodeCategoryBuilder crossDresser() {
    _crossDresser = true;
    return this;
  }

  /**
   * Sets the "same clothes" variable for this category.
   */
  DressGeekCodeCategoryBuilder sameClothes() {
    _sameClothes = true;
    return this;
  }

  /**
   * Returns a [DressGeekCodeCategory] without performing any additional validations.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  DressGeekCodeCategory subValidate(GeekCodeGrade grade, bool refuse, bool noKnowledge) => new DressGeekCodeCategory(this, grade);
}

/**
 * Original documentation:
 *
 *     It is said that "clothes make the man". Well, I understood that I was made by a mommy and a daddy (and there's even a category to describe the process below!). Maybe the people who made up that saying aren't being quite that literal...
 */
class DressGeekCodeCategory extends GeekCodeCategory {
  final DressGeekCodeCategoryBuilder _builder;

  /**
   * See [GeekCodeCategory.GeekCodeCategory] for a description of the parameters.
   */
  DressGeekCodeCategory(builder, GeekCodeGrade grade)
      : this._builder = builder,
        super(builder, grade) {
    if (_builder._crossDresser) super.code += "x";
    if (_builder._sameClothes) super.code += "pu";
  }
}
