import 'package:factorio/Ressources/Coal.dart';
import 'package:factorio/Ressources/Stone.dart';
import 'package:factorio/Ressources/Wood.dart';
import 'package:factorio/Ressources/abstract/Ressource.dart';

class Player {
  final name = "Player 1";
  final ressources = <Ressource>[];

  Player(){
    Wood wood = Wood();
    wood.addQuantity(100);
    Stone stone = Stone();
    stone.addQuantity(50);
    ressources.add(wood);
    ressources.add(stone);
  }
  @override
  String toString() {
    return "$name : $ressources";
  }

}