class GameMap {
  int _size = 4 ;
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
  }

  List generateBaseMap(){
    var baseMap = [];
    for (var x=0; x<_size;x++){
      var line = [];
      for (var y=0; y<_size;y++){
        line.add("0");
      }
      baseMap.add(line);
    }
    return baseMap;
  }

  void afficheMap(){
    for(var lines in _map){
      var line = "";
      for(var carac in lines){
        line += carac;
      }
      print(line);
    }
  }
}