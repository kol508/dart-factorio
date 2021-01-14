import 'package:factorio/GameMap.dart';
import 'package:factorio/Location.dart';
import 'package:test/test.dart';

void main() {
  group("build size", () {
    test("base size", () {
      var gameMap = GameMap();
      expect(gameMap.size, 4);
    });

    test("sized", () {
      var size = 8;
      var gameMap = GameMap.sized(size);
      expect(gameMap.size, size);
    });
  });

  group("test generate map", () {
    test("base map generation", () {
      var gameMap = GameMap();
      var mapGenerated = gameMap.generateBaseMap();
      var totalElement = 0;
      for (List line in mapGenerated) {
        totalElement += line.length;
      }
      expect(totalElement, 4 * 4);
    });

    test("sized map generation", () {
      var size = 8;
      var gameMap = GameMap.sized(size);
      var mapGenerated = gameMap.generateBaseMap();
      var totalElement = 0;
      for (List line in mapGenerated) {
        totalElement += line.length;
      }
      expect(totalElement, size * size);
    });

    test("base map integrity", () {
      var gameMap = GameMap();
      var mapGenerated = gameMap.generateBaseMap();
      for (List line in mapGenerated) {
        for (Object location in line) {
          expect(location, isA<Location>());
        }
      }
    });

    test("sized map integrity", () {
      var gameMap = GameMap.sized(8);
      var mapGenerated = gameMap.generateBaseMap();
      for (List line in mapGenerated) {
        for (Object location in line) {
          expect(location, isA<Location>());
        }
      }
    });
  });
}
