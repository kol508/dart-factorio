import 'dart:ffi';
import 'package:factorio/Build/abstract/Production.dart';
import 'package:factorio/Ressources/Stone.dart';
import 'package:factorio/Ressources/Wood.dart';
import 'package:factorio/Ressources/abstract/Ressource.dart';

class StoneQuarry extends Production {
  static const int MAX_LEVEL = 3;

  @override
  List<Ressource> get buildCoast {
    var wood = Wood();
    wood.addQuantity(100);
    var stone = Stone();
    stone.addQuantity(10);
    return [wood, stone];
  }

  @override
  int get efficiency {
    return level * 25;
  }

  @override
  int get maxLevel {
    return MAX_LEVEL;
  }

  @override
  // TODO: implement multiplicateur
  Float get multiplicateur => throw UnimplementedError();

  @override
  // TODO: implement upgradeCoast
  List<Ressource> get upgradeCoast => throw UnimplementedError();
}
