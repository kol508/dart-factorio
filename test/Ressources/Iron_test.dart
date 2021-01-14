import 'package:factorio/Ressources/Iron.dart';
import 'package:test/test.dart';

void main() {
  test('try name', (){
    var iron = Iron();
    expect(iron.name,'Iron' );
  });

  test('try char', (){
    var iron = Iron();
    expect(iron.char,'i');
  });

  group('addQuantity', () {
    test('try add 10', () {
      var iron = Iron();
      iron.addQuantity(10);
      expect(iron.quantity,10);
    });

    test('try add 100',(){
      var iron = Iron();
      iron.addQuantity(100);
      expect(iron.quantity,100);
    });
  });

  group('subQuantity', (){
    test('try sub 10', () {
      var iron = Iron();
      iron.subQuantity(10);
      expect(iron.quantity,-10);
    });

    test('try sub 100',() {
      var iron = Iron();
      iron.subQuantity(100);
      expect(iron.quantity,-100);
    });
  });
}
