import 'package:factorio/Ressources/Iron.dart';
import 'package:test/test.dart';

void main() {
  test("try name", (){
    var iron = Iron();
    expect("Iron", iron.name);
  });

  test("try char", (){
    var iron = Iron();
    expect("i",iron.char);
  });

  group('addQuantity', () {
    test("try add 10", () {
      var iron = Iron();
      iron.addQuantity(10);
      expect(10,iron.quantity);
    });

    test("try add 100",(){
      var iron = Iron();
      iron.addQuantity(100);
      expect(100,iron.quantity);
    });
  });

  group("subQuantity", (){
    test("try sub 10", () {
      var iron = Iron();
      iron.subQuantity(10);
      expect(-10, iron.quantity);
    });

    test("try sub 100",() {
      var iron = Iron();
      iron.subQuantity(100);
      expect(-100, iron.quantity);
    });
  });
}
