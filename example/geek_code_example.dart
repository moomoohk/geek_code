// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library geek_code.example;

import "package:geek_code/geek_code_312.dart";

main() {
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
}
