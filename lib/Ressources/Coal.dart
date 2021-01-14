import 'package:factorio/Ressources/abstract/Ressource.dart';

class Coal extends Ressource{
  get name {
    return "Coal";
  }

  @override
  get char => "c";
}