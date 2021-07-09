import 'package:flutter_test/flutter_test.dart';
import 'package:testing_project/Components/discountFunction.dart';
import 'package:testing_project/Components/totalPrice.dart';

void main() {
  group("function test", () {
    test("%20 Discount Code Test", () async {
      var res = await DiscountFunction.discounFunction("1234");
      expect(res, -(TotalPrice().totalPrice * 20) / 100);
    });
    test("%40 Discount Code Test", () async {
      var res = await DiscountFunction.discounFunction("4567");
      expect(res, -(TotalPrice().totalPrice * 40) / 100);
    });
    test("%60 Discount Code Test", () async {
      var res = await DiscountFunction.discounFunction("9999");
      expect(res, -(TotalPrice().totalPrice * 60) / 100);
    });
    test("%0 Discount Code Test", () async {
      var res = await DiscountFunction.discounFunction("4823");
      expect(res, 0.0);
    });
  });
}
