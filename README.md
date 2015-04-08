# geek_code

A Dart implementation of the [Geek Code](http://geekcode.com/).

This package is actually a port and cleaned up version of [JGeekCode](http://github.com/moomoohk/JGeekCode/) from Java.

## Basic ideas

* This library uses builders to generate the different categories that make up a Geek Code
* Building a category is done by calling the `grade` method with a `GeekCodeGrade` or by calling some of the modifiers (i.e. `noKnowledge`) instead
* The `geek_code` library includes a collection of base classes which are useful for implementing custom Geek Code flavors
* The `geek_code.v312` library is an implementation of the Geek Code v3.12 specification (specified at http://geekcode.com/geek.html), which is useful for generating a personal Geek Code

## Generating a Geek Code with `geek_code.v312`

First you must import the library:

    import "package:geek_code/geek_code_312.dart";

Start with a `GeekCodeV312` object that will contain all the types and categories:

    GeekCodeV312 code = new GeekCodeV312([G312.IT, G312.CS]);

The above constructor receives a list of `GeekCodeType`s.

Then add categories to the code object using the `addCategory(GeekCodeCategory)`.

All v3.12 categories are globally defined by their code: 

    code.addCategory(C.grade(new GeekCodeGrade(2))); // Adds the C category (Computers) with a grade of 2 to the code

Generating a Geek Code block is done by callin `generate`:

    print(code.generate());

### Variables and modifiers

As per the v3.12 specification it is possible to set certain modifiers for categories.

    code.addCategory(h.living().grade(new GeekCodeGrade(-2))); // Adds the h category (Housing) with a grade of -2 and adds the "living" modifier to the code
    
Some modifiers are incompatible with each other:

  code.addCategory(h.living().noKnowledge()); // Throws a GeekCodeError

Some categories have specific modifiers so be sure to consult the documentation for each builder before using it.

### Full example

    GeekCodeV312 code = new GeekCodeV312([G312.IT, G312.CS] as List<GeekCodeType>)
      ..addCategory(d.crossover(new GeekCodeGrade(0)).living().grade(new GeekCodeGrade(-1)))
      ..addCategory(s.roundness(new BasicGeekCodeCategoryBuilder().grade(new GeekCodeGrade(-1))).grade(new GeekCodeGrade(3)))
      ..addCategory(a.grade(new GeekCodeGrade(-3)))
      ..addCategory(C.grade(new GeekCodeGrade(2)))
      ..addCategory(U.B().grade(new GeekCodeGrade(2)))
      ..addCategory(P.noKnowledge())
      ..addCategory(E.grade(new GeekCodeGrade(-1)))
      ..addCategory(W.grade(new GeekCodeGrade(3)))
      ..addCategory(N.noKnowledge())
      ..addCategory(o.noKnowledge())
      ..addCategory(K.noKnowledge())
      ..addCategory(w.grade(new GeekCodeGrade(-3)))
      ..addCategory(O.noKnowledge())
      ..addCategory(M.grade(new GeekCodeGrade(2)))
      ..addCategory(V.noKnowledge())
      ..addCategory(PS.grade(new GeekCodeGrade(0)))
      ..addCategory(PE.refuse())
      ..addCategory(Y.grade(new GeekCodeGrade(0)))
      ..addCategory(t.noKnowledge())
      ..addCategory(BABYLON5.noKnowledge())
      ..addCategory(X.noKnowledge())
      ..addCategory(R.refuse())
      ..addCategory(tv.grade(new GeekCodeGrade(1)))
      ..addCategory(b.grade(new GeekCodeGrade(1)))
      ..addCategory(DI.grade(new GeekCodeGrade(0)))
      ..addCategory(D.noKnowledge())
      ..addCategory(GCode.grade(new GeekCodeGrade(2)))
      ..addCategory(e.grade(new GeekCodeGrade(0)))
      ..addCategory(h.grade(new GeekCodeGrade(-2)))
      ..addCategory(r.refuse())
      ..addCategory(z.male().grade(new GeekCodeGrade(0)));
    print(code.generate());

## Feature requests and bug reports

Please file feature requests and bug reports at the [issue tracker][tracker].

[tracker]: https://github.com/moomoohk/geek_code/issues
