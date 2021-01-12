import 'dart:ffi';

import 'package:factorio/Ressources/abstract/Ressource.dart';

abstract class Production {
  int _level = 1;

  int get level {
    return _level;
  }

  bool upgradeLevel() {
    if (_level == maxLevel) {
      print("lvl max");
      return false;
    } else {
      print("lvl up");
      _level++;
      return true;
    }
  }

  int get maxLevel;

  int get efficiency;

  List<Ressource> get buildCoast;

  List<Ressource> get upgradeCoast;

  Float get multiplicateur;
}
