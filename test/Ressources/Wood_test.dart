import 'package:factorio/Ressources/Wood.dart';
import 'package:test/test.dart';

void main() {
  test("try name", (){
    var wood = Wood();
    expect("Wood", wood.name);
  });

  test("try char", (){
    var wood = Wood();
    expect("w",wood.char);
  });

  group('addQuantity', () {
    test("try add 10", () {
      var wood = Wood();
      wood.addQuantity(10);
      expect(10,wood.quantity);
    });

    test("try add 100",(){
      var wood = Wood();
      wood.addQuantity(100);
      expect(100,wood.quantity);
    });
  });

  group("subQuantity", (){
    test("try sub 10", () {
      var wood = Wood();
      wood.subQuantity(10);
      expect(-10, wood.quantity);
    });

    test("try sub 100",() {
      var wood = Wood();
      wood.subQuantity(100);
      expect(-100, wood.quantity);
    });
  });
}
