import 'package:factorio/Build/abstract/Production.dart';
import 'package:factorio/Other/Notification.dart';
import 'package:factorio/Other/Observable.dart';
import 'package:factorio/Other/Observer.dart';
import 'package:factorio/Ressources/Stone.dart';
import 'package:factorio/Ressources/Wood.dart';
import 'package:factorio/Ressources/abstract/Ressource.dart';

class Player implements Observer{
  @override
  final name = 'Player 1';
  final ressources = <Ressource>[];
  final building = <Production>[];

  void addBuilding(Observable build){
    building.add(build);
  }

  Player(){
    var wood = Wood();
    wood.addQuantity(100);
    var stone = Stone();
    stone.addQuantity(50);
    ressources.add(wood);
    ressources.add(stone);
  }
  @override
  String toString() {
    return '$name : $ressources';
  }

  @override
  set name(String _name) {
    name = _name;
  }

  @override
  void notify(Notification notification) {
    print(notification);
  }

}