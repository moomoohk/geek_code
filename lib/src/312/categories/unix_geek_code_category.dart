// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Class that builds [UnixGeekCodeCategory]s.
 *
 * Adds 1 variable setting methods:
 *
 * * [type]
 */
class UnixGeekCodeCategoryBuilder extends GeekCodeCategoryBuilder {
  UnixType _type = UnixType.NOT_SPECIFIED;

  /**
   * Creates a new [UnixGeekCodeCategoryBuilder] object.
   *
   * See [GeekCodeCategoryBuilder.GeekCodeCategoryBuilder] for a description of the parameters.
   */
  UnixGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade) : super(code, minGrade, maxGrade);

  /**
   * Sets the "type" variable for this category to [UnixType.B].
   */
  UnixGeekCodeCategoryBuilder B() => type(UnixType.B);

  /**
   * Sets the "type" variable for this category to [UnixType.L].
   */
  UnixGeekCodeCategoryBuilder L() => type(UnixType.L);

  /**
   * Sets the "type" variable for this category to [UnixType.U].
   */
  UnixGeekCodeCategoryBuilder U() => type(UnixType.U);

  /**
   * Sets the "type" variable for this category to [UnixType.A].
   */
  UnixGeekCodeCategoryBuilder A() => type(UnixType.A);

  /**
   * Sets the "type" variable for this category to [UnixType.V].
   */
  UnixGeekCodeCategoryBuilder V() => type(UnixType.V);

  /**
   * Sets the "type" variable for this category to [UnixType.H].
   */
  UnixGeekCodeCategoryBuilder H() => type(UnixType.H);

  /**
   * Sets the "type" variable for this category to [UnixType.I].
   */
  UnixGeekCodeCategoryBuilder I() => type(UnixType.I);

  /**
   * Sets the "type" variable for this category to [UnixType.O].
   */
  UnixGeekCodeCategoryBuilder O() => type(UnixType.O);

  /**
   * Sets the "type" variable for this category to [UnixType.S].
   */
  UnixGeekCodeCategoryBuilder S() => type(UnixType.S);

  /**
   * Sets the "type" variable for this category to [UnixType.C].
   */
  UnixGeekCodeCategoryBuilder C() => type(UnixType.C);

  /**
   * Sets the "type" variable for this category to [UnixType.X].
   */
  UnixGeekCodeCategoryBuilder X() => type(UnixType.X);

  /**
   * Sets the "type" variable for this category to [UnixType.OTHER].
   */
  UnixGeekCodeCategoryBuilder other() => type(UnixType.OTHER);

  /**
   * Sets the "type" variable for this category using [type].
   *
   * [B], [L], [U], [A], [V], [H], [I], [O], [S], [C], [X] and [other] are all respective shortcuts for this method.
   */
  UnixGeekCodeCategoryBuilder type(UnixType type) {
    _type = type;
    return this;
  }

  GeekCodeCategory subValidate(GeekCodeGrade grade) {
    if (this.type == null) _type = UnixType.NOT_SPECIFIED;
    return new UnixGeekCodeCategory(this, grade, _type);
  }
}

/**
 * Enum that represents the different Unix options.
 */
enum UnixType {

  /**
   * Original documentation:
   *
   *     BSD (use this unless your BSDish system is mentioned below)
   */
  B,

  /**
   * Original documentation:
   *
   *     Linux
   */
  L,

  /**
   * Original documentation:
   *
   *     Ultrix
   */
  U,

  /**
   * Original documentation:
   *
   *     AIX
   */
  A,

  /**
   * Original documentation:
   *
   *     SysV
   */
  V,

  /**
   * Original documentation:
   *
   *     HPUX
   */
  H,

  /**
   * Original documentation:
   *
   *     IRIX
   */
  I,

  /**
   * Original documentation:
   *
   *     OSF/1 (aka Digital Unix)
   */
  O,

  /**
   * Original documentation:
   *
   *     Sun OS/Solaris
   */
  S,

  /**
   * Original documentation:
   *
   *     SCO Unix
   */
  C,

  /**
   * Original documentation:
   *
   *     NeXT
   */
  X,

  /**
   * Original documentation:
   *
   *     Some other one not listed
   */
  OTHER,

  /**
   * Default value
   */
  NOT_SPECIFIED
}

/**
 * Original documentation:
 *
 *     It seems that a Unix-based operating system is the OS of choice among most geeks. In addition to telling us about your Unix abilities, you can also show which specific Unix OS you are using. To accomplish this, you include a letter showing the brand with your rating. For example: UL++++ would indicate a sysadmin running Linux.
 *
 *     U++++
 *      I am the sysadmin. If you try and crack my machine don't be surprised if the municipal works department gets an "accidental" computer-generated order to put start a new landfill on your front lawn or your quota is reduced to 4K.
 *     U+++
 *      I don't need to crack /etc/passwd because I just modified su so that it doesn't prompt me. The admin staff doesn't even know I'm here. If you don't understand what I just said, this category does NOT apply to you!
 *     U++
 *      I've get the entire admin ticked off at me because I am always using all of the CPU time and trying to run programs that I don't have access to. I'm going to try cracking /etc/passwd next week, just don't tell anyone.
 *     U+
 *      I not only have a Unix account, but I slam VMS any chance get.
 *     U
 *      I have a Unix account to do my stuff in
 *     U-
 *      I have a VMS account.
 *     U--
 *      I've seen Unix and didn't like it. DEC rules!
 *     U---
 *      Unix geeks are actually nerds in disguise.
 */
class UnixGeekCodeCategory extends GeekCodeCategory {
  UnixGeekCodeCategoryBuilder _builder;
  UnixType type;

  /**
   * See [GeekCodeCategory.GeekCodeCategory] for a description of the parameters.
   */
  UnixGeekCodeCategory(UnixGeekCodeCategoryBuilder builder, GeekCodeGrade grade, UnixType type)
      : this._builder = builder,
        super(builder, grade) {
    super.code = "U${type.toString().split(".")[1]}";
  }
}
