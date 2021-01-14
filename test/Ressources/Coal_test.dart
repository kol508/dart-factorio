import 'package:factorio/Ressources/Coal.dart';
import 'package:test/test.dart';

void main() {
  test("try name", () {
    var coal = Coal();
    expect("Coal", coal.name);
  });

  test("try char",(){
    var coal = Coal();
    expect("c",coal.char);
  });

  group('addQuantity', () {
    test("try add 10", () {
      var coal = Coal();
      coal.addQuantity(10);
      expect(10, coal.quantity);
    });

    test("try add 100", () {
      var coal = Coal();
      coal.addQuantity(100);
      expect(100, coal.quantity);
    });
  });

  group("subQuantity", () {
    test("try sub 10", () {
      var coal = Coal();
      coal.subQuantity(10);
      expect(-10, coal.quantity);
    });

    test("try sub 100", () {
      var coal = Coal();
      coal.subQuantity(100);
      expect(-100, coal.quantity);
    });
  });
}
