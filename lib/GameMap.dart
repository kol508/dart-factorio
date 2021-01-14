import 'package:factorio/Location/Plain.dart';

class GameMap {
  int _size = 4 ;
  //posMin 0:0
  //posMax size:size
  List _map = [];

  GameMap(){
    _generateMap();
  }

  GameMap.sized(int size){
    _size = size;
    _generateMap();
  }

  void _generateMap(){
    _map = generateBaseMap();
  }

  List generateBaseMap(){
    var baseMap = [];
    for (var x=0; x<_size;x++){
      var line = [];
      for (var y=0; y<_size;y++){
        line.add(Plain());
      }
      baseMap.add(line);
    }
    return baseMap;
  }

  void afficheMap(){
    for(var lines in _map){
      var line = '' ;
      for(var object in lines){
        var carac = object.toString();
        line += '$carac | ';
      }
      print(line);
    }
  }

  int get size {
    return _size;
  }
}