import 'dart:ffi';

import 'package:factorio/Other/Notification.dart';
import 'package:factorio/Other/Observable.dart';
import 'package:factorio/Other/Observer.dart';
import 'package:factorio/Ressources/abstract/Ressource.dart';

abstract class Production extends Observable {
  Production([List<Observer> observers]) : super(observers);
  int _level = 1;
  List _position = [];

  List get position {
    return _position;
  }

  int get level {
    return _level;
  }

  bool upgradeLevel() {
    if (_level == maxLevel) {
      notifyObserver(Notification('$name was max lvl'));
      return false;
    } else {
      _level++;
      notifyObserver(Notification('$name was lvl up'));
      return true;
    }
  }
  String get name;

  int get maxLevel;

  int get efficiency;

  List<Ressource> get buildCoast;

  List<Ressource> get upgradeCoast;

  Float get multiplicateur;
}
