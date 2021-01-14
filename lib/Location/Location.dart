import 'package:factorio/Ressources/abstract/Ressource.dart';

abstract class Location{
  String get name;
  List<Ressource> ressources = <Ressource>[];
}