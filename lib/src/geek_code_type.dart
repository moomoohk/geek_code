// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 * Class that represents a Geek Code type.
 *
 * Developers should create new instances of these in their Geek Code flavors/extensions and place them in a class that's easy to refer to (see [G]).
 *
 * End users should refer to said class and use the premade instances that are there.
 *
 * Original documentation:
 *
 *     Geeks come in many flavors. The flavors relate to the vocation (or, if a student, what they are training in) of the particular geek. To start a code, a geek must declare himself or herself to be a geek. To do this, we start the code with a "G" to denote "GEEK", followed by one or two letters to denote the geek's occupation or field of study. Multi-talented geeks with more than one vocational training should denote their myriad of talents with a slash between each vocation (example: GCS/MU/TW).
 */
class GeekCodeType {
  String _code;

  /**
   * Creates a [GeekCodeType] object with a [String] code that represents it.
   */
  GeekCodeType(String this._code);

  String toString() => _code;
}

/**
 * Base class for Geek Code types.
 *
 * Contains premade instances of [GeekCodeType] (in this case just [NO_QUALIFICATIONS]).
 *
 * Developers should create similar classes within their Geek Code flavors/extensions.
 */
class G {

  /**
   * Original documentation:
   *
   *     Geek of no qualifications. A rather miserable existence, you would think.
   */
  static GeekCodeType NO_QUALIFICATIONS = new GeekCodeType("!");
}
