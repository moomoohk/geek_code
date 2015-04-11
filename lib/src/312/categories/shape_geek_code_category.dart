// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Class that builds [ShapeGeekCodeCategoryBuilder]s.
 *
 * Adds 1 variable setting methods:
 *
 * * [roundness]
 */
class ShapeGeekCodeCategoryBuilder extends GeekCodeCategoryBuilder {
  BasicGeekCodeCategory _roundness;

  /**
   * Creates a new [ShapeGeekCodeCategoryBuilder] object.
   *
   * See [GeekCodeCategoryBuilder.GeekCodeCategoryBuilder] for a description of the parameters.
   */
  ShapeGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade) : super(code, minGrade, maxGrade);

  /**
   * Sets the "roundness" variable for this category  to [roundness].
   */
  ShapeGeekCodeCategoryBuilder roundness(BasicGeekCodeCategory roundness) {
    _roundness = roundness;
    return this;
  }

  /**
   * Throws a [GeekCodeError] if invoked.
   */
  ShapeGeekCodeCategoryBuilder notRigid() {
    throw new GeekCodeError("Can't notRigid shape!");
  }

  /**
   * Returns a [ShapeGeekCodeCategory] assuming [grade] is the "height" variable after performing these validations:
   *
   * * Ensuring [grade] (height) is not null
   *
   * * Ensuring [roundness] has been set
   *
   * * Ensuring that falls within the bounds set by [minGrade] and [maxGrade]
   *
   * If any of these validations fail a [GeekCodeError] will get thrown.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  ShapeGeekCodeCategory subValidate(GeekCodeGrade grade, bool refuse, bool noKnowledge) {
    if (!refuse && !noKnowledge) {
      if (grade == null) throw new GeekCodeError("grade (height) not set!");
      if (_roundness == null) throw new GeekCodeError("roundness not set!");
      if (_roundness.grade.grade < super.minGrade ||
          _roundness.grade.grade > this.maxGrade) throw new ArgumentError("roundness[${grade.grade}] must fall within bounds: minGrade[${super.minGrade}], maxGrade[${super.maxGrade}!");
    }
    return new ShapeGeekCodeCategory(this, grade);
  }
}

/**
 * Original documentation:
 *
 *     Geeks come in many shapes and sizes. Shape code is divided into two parts. The first indicates height, while the second indicates roundness. Mix each section to fit yourself. Examples include: s:++, s++:, s++:--.
 *
 *     s+++:+++
 *      I usually have to duck through doors/I take up three movie seats.
 *     s++:++
 *      I'm a basketball/linebacker candidate.
 *     s+:+
 *      I'm a little taller/rounder than most.
 *     s:
 *      I'm an average geek
 *     s-:-
 *      I look up to most people. Everyone tells me to gain a few pounds.
 *     s--:--
 *      I look up to damn near everybody. I tend to have to fight against a strong breeze.
 *     s---:---
 *      I take a phone book with me when I go out so I can see to eat dinner. My bones are poking through my skin.
 */
class ShapeGeekCodeCategory extends GeekCodeCategory {
  final ShapeGeekCodeCategoryBuilder _builder;
  final BasicGeekCodeCategory _roundness;

  /**
   * See [GeekCodeCategory.GeekCodeCategory] for a description of the parameters.
   */
  ShapeGeekCodeCategory(ShapeGeekCodeCategoryBuilder builder, GeekCodeGrade grade)
      : this._builder = builder,
        this._roundness = builder._roundness,
        super(builder, grade);

  String toString() => super.toString() + (!_builder.getRefuse && !_builder.getNoKnowledge ? ":$_roundness" : "");
}
