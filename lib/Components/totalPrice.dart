class TotalPrice {
  static final TotalPrice _totalPriceClass = TotalPrice.initialize();
  double _totalPrice = 0.0;
  List _productsName = [];

  get totalPrice => _totalPrice;
  get productsName => _productsName;

  void addPrice(double value) {
    _totalPrice = value + _totalPrice;
  }

  void addProduct(String value) {
    _productsName.add(value);
  }

  void removeProduct(int index) {
    _productsName.removeAt(index);
  }

  factory TotalPrice() {
    return _totalPriceClass;
  }
  TotalPrice.initialize() {
    print("initialized");
  }
}
