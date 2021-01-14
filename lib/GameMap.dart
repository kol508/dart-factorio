import 'package:factorio/Ressources/Wood.dart';
import 'package:factorio/Location.dart';

class GameMap {
  int _size = 4 ;
  //posMin 0:0
  //posMax size:size
  List _map = [];

  GameMap(){
    generateMap();
  }

  GameMap.sized(int size){
    _size = size;
    generateMap();
  }

  void generateMap(){
    _map = generateBaseMap();
    //addRessources();
  }

  List generateBaseMap(){
    var baseMap = [];
    for (var x=0; x<_size;x++){
      var line = [];
      for (var y=0; y<_size;y++){
        line.add(Toast());
      }
      baseMap.add(line);
    }
    return baseMap;
  }

  void addRessources(){
    var toast = Wood();
    toast.addQuantity(500);
    _map[0][0] = toast;
  }

  void afficheMap(){
    for(var lines in _map){
      var line = "" ;
      for(var object in lines){
        var carac = object.toString();
        line += '$carac | ';
      }
      print(line);
    }
  }

  get size {
    return _size;
  }
}