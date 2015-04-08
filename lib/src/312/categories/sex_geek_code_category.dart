// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Class that builds [DressGeekCodeCategory]s.
 *
 * Adds 2 variable setting methods:
 *
 * * [male]
 * * [female]
 */
class SexGeekCodeCategoryBuilder extends ExtremeGenericGeekCodeCategoryBuilder {
  Gender _gender;

  /**
   * Creates a new [SexGeekCodeCategoryBuilder] object.
   *
   * See [GeekCodeCategoryBuilder.GeekCodeCategoryBuilder] for a description of the parameters.
   */
  SexGeekCodeCategoryBuilder(String code, int minGrade, int maxGrade)
      : _gender = Gender.z,
        super(code, minGrade, maxGrade);

  /**
   * Sets the "male" variable for this category.
   */
  GeekCodeCategoryBuilder male() {
    if (_gender != Gender.z) throw new GeekCodeError("Gender already set!");
    _gender = Gender.y;
    return this;
  }

  /**
   * Sets the "female" variable for this category.
   */
  GeekCodeCategoryBuilder female() {
    if (_gender != Gender.z) throw new GeekCodeError("Gender already set!");
    _gender = Gender.x;
    return this;
  }

  /**
   * Returns a [SexGeekCodeCategory] without performing any additional validations.
   *
   * See [GeekCodeCategoryBuilder.subValidate] for a fuller explanation of this method.
   */
  SexGeekCodeCategory subValidate(GeekCodeGrade grade) => new SexGeekCodeCategory(this, grade, _gender);
}

/**
 * Enum that represents the 3 gender options.
 */
enum Gender {

  /**
   * Female
   */
  x,

  /**
   * Male
   */
  y,

  /**
   * Gender undisclosed
   */
  z
}

/**
 * Original documentation:
 *
 *     Geeks have traditionally had problems with sex (ie, they never have any). Because geeks are so wrapped up in their sexuality (or lack of sexuality for that matter), it is important that the geek be willing to quantify their sexual experiences.
 *
 *     This code also is used to denote the gender of the geek. Females use 'x' in this category, while males use 'y'. Those that do not wish to disclose their gender can use 'z'. For example:
 *
 *      - x+ -- A female who has had sex
 *      - y+ -- A male who has had sex.
 *      - z+ -- A person (gender undisclosed) who has had sex.
 *
 *     For those persons who do not wish to give out any details of their sex life, the use of z? (where z is the gender code) will allow you to do so.
 *
 *     z+++++
 *      I am Madonna
 *     z++++
 *      I have a few little rug rats to prove I've been there. Besides, with kids around, who has time for sex?
 *     z+++
 *      I'm married, so I can get it (theoretically) whenever I want.
 *     z++
 *      I was once referred to as 'easy'. I have no idea where that might have come from though.
 *     z+
 *      I've had real, live sex.
 *     z
 *      I've had sex. Oh! You mean with someone else? Then no.
 *     z-
 *      Not having sex by choice.
 *     z--
 *      Not having sex because I just can't get any...
 *     z---
 *      Not having sex because I'm a nun or a priest.
 *     z*
 *      I'm a pervert.
 *     z**
 *      I've been known to make perverts look like angels.
 *     !z
 *      Sex? What's that? I've had no sexual experiences.
 *     z?
 *      It's none of your business what my sex life is like (this is used to denote your gender only).
 *     !z+
 *      Sex? What's that? No experience, willing to learn!
 */
class SexGeekCodeCategory extends ExtremeGeekCodeCategory {
  SexGeekCodeCategoryBuilder _builder;

  /**
   * See [GeekCodeCategory.GeekCodeCategory] for a description of the parameters.
   */
  SexGeekCodeCategory(SexGeekCodeCategoryBuilder builder, GeekCodeGrade grade, Gender gender)
      : _builder = builder,
        super(builder, grade) {
    super.code = gender.toString().toLowerCase().split(".")[1];
  }
}
