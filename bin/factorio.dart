import 'dart:io';

abstract class Connectable {}

abstract class Updatable {
  void update();
}

class Usine implements Connectable, Updatable {
  void update(){
    stock += 1 * Bois;
  }
}

// Scierie, fabrique, ...
class Scierie extends Usine {}

class Resource {}
// Bois, fer, ...

class Deposit implements Connectable, Updatable {}

// Foret, Mine,
class Foret extends Deposit {}

class Ville implements Connectable, Updatable {}

class Connection implements Updatable {
  Connection(Connectable c1, Connectable c2);
}

/*
R1 ---> Usine1  \
R2 ---> Usine2  -\--> Usine3  ---> City

foret --> scierie --> planche
mine de fer --> fabrique de clous  --> clous

planche + clous  --> fabrique de meubles --> meuble

meuble --> ville --> argent;

*/

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

void main(List<String> arguments) {
  print("hello");
  if (Platform.isWindows) {
    // not tested, I don't have Windows
    // may not to work because 'cls' is an internal command of the Windows shell
    // not an executeable
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
  print("\x1B[2J\x1B[0;0H");
  print("World");
}
