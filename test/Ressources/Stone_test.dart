import 'package:factorio/Ressources/Stone.dart';
import 'package:test/test.dart';

void main() {
  test("try name", (){
    var stone = Stone();
    expect("Stone", stone.name);
  });

  test("try char", (){
    var stone = Stone();
    expect("s",stone.char);
  });

  group('addQuantity', () {
    test("try add 10", () {
      var stone = Stone();
      stone.addQuantity(10);
      expect(10,stone.quantity);
    });

    test("try add 100",(){
      var stone = Stone();
      stone.addQuantity(100);
      expect(100,stone.quantity);
    });
  });

  group("subQuantity", (){
    test("try sub 10", () {
      var stone = Stone();
      stone.subQuantity(10);
      expect(-10, stone.quantity);
    });

    test("try sub 100",() {
      var stone = Stone();
      stone.subQuantity(100);
      expect(-100, stone.quantity);
    });
  });
}
