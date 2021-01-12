import 'dart:ffi';

import 'package:factorio/Ressources/abstract/Ressource.dart';

abstract class Production {
  int get level;

  int get maxLevel;

  int get efficiency;

  List<Ressource> get buildCoast;

  List<Ressource> get upgradeCoast;

  Float get multiplicateur;
}
