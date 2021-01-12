import 'dart:ffi';
import 'package:factorio/Build/abstract/Production.dart';
import 'package:factorio/Ressources/abstract/Ressource.dart';

class StoneQuarry extends Production{
  @override
  // TODO: implement buildCoast
  List<Ressource> get buildCoast => throw UnimplementedError();

  @override
  // TODO: implement efficiency
  int get efficiency => throw UnimplementedError();

  @override
  // TODO: implement level
  int get level => throw UnimplementedError();

  @override
  // TODO: implement maxLevel
  int get maxLevel => throw UnimplementedError();

  @override
  // TODO: implement multiplicateur
  Float get multiplicateur => throw UnimplementedError();

  @override
  // TODO: implement upgradeCoast
  List<Ressource> get upgradeCoast => throw UnimplementedError();

}