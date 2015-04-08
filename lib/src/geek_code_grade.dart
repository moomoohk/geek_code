// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Class that represents a Geek Code grade.
 *
 * Grades are used to rank yourself in different Geek Code categories.
 */
class GeekCodeGrade {

  /**
   * The actual grade in [int] form.
   *
   * Can be null (or 0).
   */
  final int grade;

  /**
   * Creates a [GeekCodeGrade] object with a [grade].
   */
  GeekCodeGrade(int this.grade);

  String toString() {
    String st = "";
    if (this.grade != null) {
      if (this.grade > 0) for (int i = 1; i <= this.grade; i++) st += "+";
      if (this.grade < 0) for (int i = -1; i >= this.grade; i--) st += "-";
    }
    return st;
  }
}
