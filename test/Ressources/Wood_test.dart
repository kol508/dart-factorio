import 'package:factorio/Ressources/Wood.dart';
import 'package:test/test.dart';

void main() {
  test("try name", (){
    var wood = Wood();
    expect(wood.name,"Wood");
  });

  test("try char", (){
    var wood = Wood();
    expect(wood.char,"w");
  });

  group('addQuantity', () {
    test("try add 10", () {
      var wood = Wood();
      wood.addQuantity(10);
      expect(wood.quantity,10);
    });

    test("try add 100",(){
      var wood = Wood();
      wood.addQuantity(100);
      expect(wood.quantity,100);
    });
  });

  group("subQuantity", (){
    test("try sub 10", () {
      var wood = Wood();
      wood.subQuantity(10);
      expect(wood.quantity,-10);
    });

    test("try sub 100",() {
      var wood = Wood();
      wood.subQuantity(100);
      expect(wood.quantity,-100);
    });
  });
}
