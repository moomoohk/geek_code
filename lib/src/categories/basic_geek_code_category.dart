// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Class that builds [BasicGeekCodeCategory]s.
 *
 * All Geek Code category builders extend from this class.
 *
 * Categories can have grades and/or variables attached to them.
 *
 * The following are methods that allow the settings of variables for this category:
 *
 * * [notRigid]
 * * [living]
 * * [crossover]
 * * [noKnowledge]
 * * [refuse]
 *
 * All 5 methods return this builder object back after setting the relevant variable so chaining is possible.
 *
 * To build the category use the [grade] method.
 *
 * Original documentation:
 *
 *     Geeks can seldom be strictly quantified. To facilitate the fact that within any one category the geek may not be able to determine a specific rating, variables have been designed to allow this range to be included.
 */
class BasicGeekCodeCategoryBuilder {
  bool _notRigid = false;
  bool _living = false;
  bool _noKnowledge = false;
  bool _refuse = false;
  GeekCodeGrade _crossover;

  bool get getNoRigid => _notRigid;
  bool get getLiving => _living;
  bool get getNoKnowledge => _noKnowledge;
  bool get getRefuse => _refuse;

  /**
   * Original documentation:
   *
   *     @
   *      For this variable, said trait is not very rigid, may change with time or with individual interaction. For example, Geeks who happen to very much enjoy Star Trek: The Next Generation, but dislike the old 60's series might list themselves as t++@.
   */
  BasicGeekCodeCategoryBuilder notRigid() {
    if (this._notRigid) throw new GeekCodeError("notRigid already set!");
    this._notRigid = true;
    return this;
  }

  /**
   * Original documentation:
   *
   *     $
   *      Indicates that this particular category is done for a living. For example, UL+++$ indicates that the person utilizes Unix and gets paid for it. Quite a lucky geek, for sure.
   */
  BasicGeekCodeCategoryBuilder living() {
    if (this._living) throw new GeekCodeError("living already set!");
    this._living = true;
    return this;
  }

  /**
   * [crossover] will be used a crossover for this category.
   *
   * Original documentation:
   *
   *     ()
   *      For indicating "cross-overs" or ranges. Geeks who go from C+ to C--- depending on the situation (i.e. mostly "C+") could use C+(---). @ is different from () in that () has finite limits within the category, while @ ranges all over.
   */
  BasicGeekCodeCategoryBuilder crossover(GeekCodeGrade crossover) {
    this._crossover = crossover;
    return this;
  }

  /**
   * Original documentation:
   *
   *     ?
   *      Unless stated otherwise within the specific category, the ? is placed after the category identifier and indicates that the geek has no knowledge about that specific category. For example, a person that has never even heard of Babylon 5, would list their Babylon 5 category as 5?
   */
  BasicGeekCodeCategory noKnowledge() {
    if (this._notRigid || this._living) throw new GeekCodeError("Can't noKnowledge while (notRigid || living)!");
    this._noKnowledge = true;
    return grade(null);
  }

  /**
   * Original documentation:
   *
   *     !
   *      Placed BEFORE the category. Unless stated otherwise, indicates that the person refuses to participate in this category. This is unlike the ? variable as the ? indicates lack of knowledge, while the ! indicates stubborn refusal to participate. For example, !E would be a person that just plain refuses to have anything to do with Emacs, while E? would be a person that doesn't even know what Emacs is.
   */
  BasicGeekCodeCategory refuse() {
    if (this._notRigid || this._living) throw new GeekCodeError("Can't refuse while (notRigid || living)!");
    this._refuse = true;
    return grade(null);
  }

  /**
   * Builds the [BasicGeekCodeCategory] with [grade] and returns it.
   */
  BasicGeekCodeCategory grade(GeekCodeGrade grade) {
    return new BasicGeekCodeCategory(this, grade);
  }
}

/**
 * Class that represents a basic Geek Code category.
 */
class BasicGeekCodeCategory {
  final BasicGeekCodeCategoryBuilder _builder;
  final GeekCodeGrade _grade;

  /**
   * Creates a new [BasicGeekCodeCategory].
   *
   * Is only ever invoked from a [BasicGeekCodeCategoryBuilder]'s [grade] method.
   *
   * The first parameter is the builder object and the second is the grade to apply to this category.
   */
  BasicGeekCodeCategory(BasicGeekCodeCategoryBuilder this._builder, GeekCodeGrade this._grade);

  /**
   * Returns this category's grade.
   */
  GeekCodeGrade get grade => this._grade;

  String toString() =>
      (grade != null ? grade.toString() : "") + (_builder._crossover != null ? "(" + _builder._crossover.toString() + ")" : "") + (_builder._living ? "\$" : "") + (_builder._notRigid ? "@" : "");
}
