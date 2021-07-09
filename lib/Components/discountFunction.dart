import 'package:testing_project/Components/totalPrice.dart';

class DiscountFunction {
  static discounFunction(String code) {
    double price = 0.0;
    if (code == "1234") {
      price = (TotalPrice().totalPrice * 20) / 100;
      print("%20");
    } else if (code == "4567") {
      price = (TotalPrice().totalPrice * 40) / 100;
      print("%40");
    } else if (code == "9999") {
      price = (TotalPrice().totalPrice * 60) / 100;
      print("%60");
    } else {
      price = 0.0;
    }
    return price;
  }
}
