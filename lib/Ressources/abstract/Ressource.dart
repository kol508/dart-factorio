abstract class Ressource {
  int _quantity = 0;

  int get quantity {
    return _quantity;
  }

  // ignore: always_declare_return_types
  get name;

  // ignore: always_declare_return_types
  get char;

  void addQuantity(int quantity) {
    _quantity += quantity;
  }

  void subQuantity(int quantity) {
    _quantity -= quantity;
  }

  @override
  String toString() {
    return '$name : $_quantity';
  }
}
