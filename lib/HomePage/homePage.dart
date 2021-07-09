import 'package:flutter/material.dart';
import 'package:testing_project/BasketPage/myBasket.dart';
import 'package:testing_project/Components/appBar.dart';
import 'package:testing_project/Components/constants.dart';
import 'package:testing_project/Components/customText.dart';
import 'package:testing_project/Components/totalPrice.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool product1 = false;
    bool product2 = false;
    bool product3 = false;
    Size size = MediaQuery.of(context).size;
    return StatefulBuilder(builder: (thisLowerContext, innerSetState) {
      return Scaffold(
        appBar: CustomAppBar(
          backIcon: false,
          text: "Home Page",
          widget: IconButton(
            key: Key("goBasket"),
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyBasket()));
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              //Image
              Image.asset("assets/images/detail.jpg"),
              //Product 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: secondaryColor,
                    ),
                    title: CustomText(
                      color: Colors.black,
                      sizes: Sizes.small,
                      text: "Product 1 / 10 Dolars",
                    ),
                    trailing: Checkbox(
                      key: Key("button1"),
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: product1,
                      onChanged: (bool value) {
                        innerSetState(() {
                          product1 = value;
                          value
                              ? TotalPrice().addPrice(10.0)
                              : TotalPrice().addPrice(-10.0);
                          value
                              ? TotalPrice().addProduct("Product 1")
                              : TotalPrice().removeProduct(0);
                          value
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is added")))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is removed")));
                        });
                      },
                    ),
                  ),
                ),
              ),
              //Product 2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: secondaryColor,
                    ),
                    title: CustomText(
                      color: Colors.black,
                      sizes: Sizes.small,
                      text: "Product 1 / 20 Dolars",
                    ),
                    trailing: Checkbox(
                      key: Key("button2"),
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: product2,
                      onChanged: (bool value) {
                        innerSetState(() {
                          product2 = value;
                          value
                              ? TotalPrice().addPrice(20.0)
                              : TotalPrice().addPrice(-20.0);
                          value
                              ? TotalPrice().addProduct("Product 2")
                              : TotalPrice().removeProduct(1);
                          value
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is added")))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is removed")));
                        });
                      },
                    ),
                  ),
                ),
              ),
              //Product 3
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_right,
                      color: secondaryColor,
                    ),
                    title: CustomText(
                      color: Colors.black,
                      sizes: Sizes.small,
                      text: "Product 1 / 30 Dolars",
                    ),
                    trailing: Checkbox(
                      key: Key("button3"),
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: product3,
                      onChanged: (bool value) {
                        innerSetState(() {
                          product3 = value;
                          value
                              ? TotalPrice().addPrice(30.0)
                              : TotalPrice().addPrice(-30.0);
                          value
                              ? TotalPrice().addProduct("Product 3")
                              : TotalPrice().removeProduct(2);
                          value
                              ? ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is added")))
                              : ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("The product is removed")));
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
