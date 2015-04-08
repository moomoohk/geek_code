// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Class that represents a Geek Code of version 3.12.
 */
class GeekCodeV312 extends GeekCode {

  /**
   *  Creates a [GeekCodeV312] object with [types] set as its types.
   *
   *  [types] can be `null` or an empty list.
   */
  GeekCodeV312([List<GeekCodeType> types]) : super(types);

  /**
   * Will generate a Geek Code v3.12 block.
   *
   * Throws a [GeekCodeError] if [version] is provided.
   *
   * See: [GeekCode.generate]
   */
  String generate([String version]) {
    if(version != null) throw new GeekCodeError("Cannot pass version!");
    return super.generate("3.12");
  }
}
