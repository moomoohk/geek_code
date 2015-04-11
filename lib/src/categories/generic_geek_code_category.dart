// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Simple barebones implementation of [GeekCodeCategoryBuilder].
 *
 * Should be good enough for the creation of most [GeekCodeCategory]s.
 */
class GenericGeekCodeCategoryBuilder extends GeekCodeCategoryBuilder {

  /**
   * Creates a new [GenericGeekCodeCategoryBuilder] object.
   *
   * The first parameter signifies the [String] representation of this category.
   *
   * The second parameter indicates what is the lowest grade that can be set in this category while the second indicates the highest.
   */
  GenericGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade) : super(code, minGrade, maxGrade);

  /**
   * Returns a [GeekCodeCategory] without performing any additional validations.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  GeekCodeCategory subValidate(GeekCodeGrade grade, bool refuse, bool noKnowledge) => new GeekCodeCategory(this, grade);
}