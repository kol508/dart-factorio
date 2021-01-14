import 'package:factorio/Ressources/abstract/Ressource.dart';

class Coal extends Ressource{
  @override
  String get name {
    return 'Coal';
  }

  @override
  String get char => 'c';
}