// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code;

/**
 *  Class that represents a Geek Code.
 *
 *  Each Geek Code object has a list of [GeekCodeType]s that indicate what type of Geek you are and a set of [GeekCodeCategory]s.
 *
 *  Original documentation:
 *
 *     The geek code consists of several categories. Each category is labeled with a letter and some qualifiers. Go through each category and determine which set of qualifiers best describes you in that category. By stringing all of these 'codes' together, you are able to construct your overall geek code. It is this single line of code that will inform other geeks the world over of what a great geek you actually are.
 *     Some of the qualifiers will very probably not match with you exactly. It is impossible to cover all possibilities in each category. Simply choose that qualifier that most closely matches you. Also, some activities described in a specific qualifier you may not engage in, while you do engage in others. Each description of each qualifier describes the wide range of activities that apply, so as long as you match with one, you can probably use that qualifier.
 *
 *     After you have determined each of your qualifiers, you need to the construct your GEEK CODE BLOCK. Instructions are provided on how to do this towards the end of this file.
 *
 *     Also, pay particular attention to case-sensitivity, there can be a big difference between a 'w' and a 'W'.
 */
class GeekCode {
  final List<GeekCodeType> _types;
  final Map<String, GeekCodeCategory> _categories;

  /**
   *  Creates a [GeekCode] object with [types] set as its types.
   *
   *  [types] can be `null` or an empty list.
   */
  GeekCode([List<GeekCodeType> types])
      : _types = _determineTypeList(types),
        _categories = new Map<String, GeekCodeCategory>();

  /**
   *  Adds a [GeekCodeCategory] to this Geek Code object.
   *
   *  If [category] already exists a [GeekCodeError] will be thrown.
   */
  void addCategory(GeekCodeCategory category) {
    if (_categories.keys.contains(category.code)) throw new GeekCodeError("Geek Code already contains category[" + category.code + "]!");
    _categories[category.code] = category;
  }

  /**
   * Base Geek Code block generation method.
   *
   * Compiles all the [GeekCodeType]s and [GeekCodeCategory]s added to this object and returns them in a valid Geek Code block.
   *
   * Should only be invoked from a class that extends [GeekCode]. In that case a String representing the version of that Geek Code flavor should be passed as [version].
   *
   * Example Geek Code block (for Geek Code version 3.12):
   *
   *     -----BEGIN GEEK CODE BLOCK-----
   *     Version: 3.12
   *     GCS/IT D? E- G++ C++ M++ N? O? K?
   *     W+++ V? P? !R DI Y X? d-()$
   *     e b+ a--- o? h-- w--- UB++ t?
   *     s+++:- !r 5? PS tv+ !PE y
   *     ------END GEEK CODE BLOCK------
   */
  String generate([String version]) {
    if (version == null) throw new ArgumentError("Must provide version!");
    String st = "-----BEGIN GEEK CODE BLOCK-----\nVersion: $version\nG";
    for (GeekCodeType type in _types) st += "$type/";
    st = st.substring(0, st.length - 1) + " ";
    int categories = 0;
    for (GeekCodeCategory category in _categories.values) {
      st += "$category ";
      categories++;
      if (categories % 8 == 0) st += "\n";
    }
    return st.trim() + "\n------END GEEK CODE BLOCK------";
  }

  /**
   * Similar to [generate] but the output does not contain line breaks or the BEGIN and END lines.
   */
  String toString() {
    String st = "G";
    for (G type in _types) st += "$type/";
    st = st.substring(0, st.length - 1) + " ";
    for (GeekCodeCategory category in _categories.values) st += "$category ";
    return st.trim();
  }

  static List<GeekCodeType> _determineTypeList(List<GeekCodeType> types) {
    if (types == null) return new List();
    return types;
  }
}
