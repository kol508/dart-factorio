import 'package:factorio/Ressources/Coal.dart';
import 'package:test/test.dart';

void main() {
  test('try name', () {
    var coal = Coal();
    expect(coal.name,'Coal' );
  });

  test('try char',(){
    var coal = Coal();
    expect(coal.char,'c');
  });

  group('addQuantity', () {
    test('try add 10', () {
      var coal = Coal();
      coal.addQuantity(10);
      expect(coal.quantity,10);
    });

    test('try add 100', () {
      var coal = Coal();
      coal.addQuantity(100);
      expect(coal.quantity,100);
    });
  });

  group('subQuantity', () {
    test('try sub 10', () {
      var coal = Coal();
      coal.subQuantity(10);
      expect(coal.quantity,-10);
    });

    test('try sub 100', () {
      var coal = Coal();
      coal.subQuantity(100);
      expect(coal.quantity,-100);
    });
  });
}
