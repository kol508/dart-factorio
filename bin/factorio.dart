import 'dart:io';
import 'package:factorio/GameMap.dart';
import 'package:factorio/Player/Player.dart';
/*
class Jeu{
  final updatables =<Updatable>[];
  void run(){
    while (true) {
      updatables.forEach((element) {element.update()});
      print(toString());
    }
  }
  String toString(){
    print("\x1b[2J\x1b[H");

  }

}
*/
void main(List<String> arguments) {
  var player1 = Player();
  var map = GameMap.sized(8);
  map.afficheMap();
  print(player1);

  if (Platform.isWindows) {
    // not tested, I don't have Windows
    // may not to work because 'cls' is an internal command of the Windows shell
    // not an executeable
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
  print("World");
}

