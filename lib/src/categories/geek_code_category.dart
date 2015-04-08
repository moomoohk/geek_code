// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Interface for creating [GeekCodeCategory]s.
 */
abstract class GeekCodeCategoryBuilder extends BasicGeekCodeCategoryBuilder {
  String _code;
  BasicGeekCodeCategory _wannabe;

  /**
   * Indicates what is the lowest grade that can be set in this category.
   */
  int minGrade;

  /**
   * Indicates what is the highest grade that can be set in this category.
   */
  int maxGrade;

  /**
   * Creates a new [GeekCodeCategoryBuilder] object.
   *
   * [_code] signifies the [String] representation of this category.
   *
   * See [GeekCodeCategoryBuilder.minGrade] and [GeekCodeCategoryBuilder.maxGrade] for the other two parameters.
   */
  GeekCodeCategoryBuilder(String this._code, int this.minGrade, int this.maxGrade);

  /**
   * Takes [wannabe]'s score and sets it as "wannabe" variable for this category.
   *
   * Original documentation:
   *
   *     >
   *      For 'wannabe' ratings. Indicating that while the geek is currently at one rating, they are striving to reach another. For example, C++>$ indicating a geek that is currently computer savvy, but wants to someday make money at it.
   */
  GeekCodeCategoryBuilder wannabe(BasicGeekCodeCategory wannabe) {
    this._wannabe = wannabe;
    return this;
  }

  /**
   * Validates all the build parameters and builds the [GeekCodeCategory] with [grade] and returns it.
   *
   * Validation is composed of these steps:
   *
   * * Ensuring the code provided in the constructor is not null and that its length is not 0
   *
   * * Ensuring the minumum and maximum grades provided in the constructor are not null
   *
   * * Ensuring the minimum grade is smaller than the maximum grade
   *
   * * Ensuring that [grade] is not null and falls within the bounds set by [minGrade] and [maxGrade]
   *
   * If any of these validations fail a [GeekCodeError] will get thrown.
   *
   * Once those steps complete successfully [subValidate] is called with [grade] and returned.
   */
  GeekCodeCategory grade(GeekCodeGrade grade) {
    if (_code == null) throw new GeekCodeError("code not set!");
    if (_code.trim().length == 0) throw new GeekCodeError("code length must be > 0!");
    if (minGrade == null) throw new GeekCodeError("minGrade not set!");
    if (maxGrade == null) throw new GeekCodeError("maxGrade not set!");
    if (minGrade > maxGrade) throw new ArgumentError("minGrade[$minGrade] must be smaller than maxGrade[$maxGrade}]!");
    if (grade != null &&
        (grade.grade < minGrade || grade.grade > this.maxGrade)) throw new ArgumentError("grade[${grade.grade}] must fall within bounds: minGrade[$minGrade], maxGrade[$maxGrade]!");
    return subValidate(grade);
  }

  /**
   * Lets any implementations of this class execute more specific validations to make sure the builder is set correctly.
   *
   * This method is invoked from [GeekCodeCategory.grade] and shouldn't be invoked directly.
   *
   * Returns a [GeekCodeCategory] (or extension of it) if all validations are successful.
   *
   * [grade] is the grade to apply to this category.
   */
  GeekCodeCategory subValidate(GeekCodeGrade grade);
}

/**
 * Base class for built Geek Code categories.
 */
class GeekCodeCategory extends BasicGeekCodeCategory {
  final GeekCodeCategoryBuilder _builder;

  /**
   * [String] representation of this category.
   */
  String code;

  /**
   * Creates a new [GeekCodeCategory].
   *
   * Is only ever invoked from a [GeekCodeCategoryBuilder]'s [GeekCodeCategoryBuilder.subValidate] method.
   *
   * [builder] is the builder used to build this category.
   *
   * [grade] is the grade to set for this category.
   */
  GeekCodeCategory(GeekCodeCategoryBuilder builder, GeekCodeGrade grade)
      : this._builder = builder,
        code = builder._code,
        super(builder, grade);

  String toString() => (_builder._refuse ? "!" : "") + code + super.toString() + (_builder._noKnowledge ? "?" : "") + (_builder._wannabe != null ? ">" + _builder._wannabe.toString() : "");
}
