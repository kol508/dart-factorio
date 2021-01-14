import 'package:factorio/Ressources/Stone.dart';
import 'package:test/test.dart';

void main() {
  test("try name", (){
    var stone = Stone();
    expect(stone.name,"Stone");
  });

  test("try char", (){
    var stone = Stone();
    expect(stone.char,"s");
  });

  group('addQuantity', () {
    test("try add 10", () {
      var stone = Stone();
      stone.addQuantity(10);
      expect(stone.quantity,10);
    });

    test("try add 100",(){
      var stone = Stone();
      stone.addQuantity(100);
      expect(stone.quantity,100);
    });
  });

  group("subQuantity", (){
    test("try sub 10", () {
      var stone = Stone();
      stone.subQuantity(10);
      expect(stone.quantity,-10);
    });

    test("try sub 100",() {
      var stone = Stone();
      stone.subQuantity(100);
      expect(stone.quantity,-100);
    });
  });
}
