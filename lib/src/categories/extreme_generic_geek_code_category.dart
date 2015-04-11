// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Implementation of [GeekCodeCategoryBuilder] that allows the setting of an "extreme" grade.
 *
 * "Extreme" grades are grades that cannot be expressed with numbers and [GeekCodeGrade]s.
 *
 * "Extreme" grades are represented with an asterisk (*).
 */
class ExtremeGenericGeekCodeCategoryBuilder extends GenericGeekCodeCategoryBuilder {
  int _extreme;

  /**
   * Creates a new [ExtremeGenericGeekCodeCategoryBuilder] object.
   *
   * The first parameter signifies the [String] representation of this category.
   *
   * The second parameter indicates what is the lowest grade that can be set in this category while the second indicates the highest.
   */
  ExtremeGenericGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade)
      : _extreme = 0,
        super(code, minGrade, maxGrade);

  /**
   * Sets the "extreme" grade.
   *
   * [level] indicates how extreme the grade is.
   */
  GeekCodeCategory extreme(int level) {
    _extreme = level;
    return subValidate(null, false, false);
  }

  /**
   * Returns a [ExtremeGeekCodeCategory] without performing any additional validations.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  ExtremeGeekCodeCategory subValidate(GeekCodeGrade grade, bool refuse, bool noKnowledge) => new ExtremeGeekCodeCategory(this, grade);
}

/**
 * Class that represents Geek Code categories that can have an "extreme" grade.
 */
class ExtremeGeekCodeCategory extends GeekCodeCategory {
  final ExtremeGenericGeekCodeCategoryBuilder _builder;
  final int _extreme;

  /**
   * Creates a new [ExtremeGeekCodeCategory].
   *
   * Is only ever invoked from a [ExtremeGenericGeekCodeCategoryBuilder]'s [ExtremeGenericGeekCodeCategoryBuilder.subValidate] method.
   *
   * The first parameter is the builder object and the second is the grade to apply to this category.
   *
   * The third is the level of the "extreme" grade.
   */
  ExtremeGeekCodeCategory(ExtremeGenericGeekCodeCategoryBuilder builder, GeekCodeGrade grade)
      : _builder = builder,
        _extreme = builder._extreme,
        super(builder, grade);

  String toString() {
    String st = super.toString();
    if (_extreme > 0) for (int i = 1; i <= _extreme; i++) st += "*";
    return st;
  }
}
