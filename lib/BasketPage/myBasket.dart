import 'package:flutter/material.dart';
import 'package:testing_project/Components/appBar.dart';
import 'package:testing_project/Components/constants.dart';
import 'package:testing_project/Components/customButton.dart';
import 'package:testing_project/Components/customText.dart';
import 'package:testing_project/Components/customTextfield.dart';
import 'package:testing_project/Components/discountFunction.dart';
import 'package:testing_project/Components/totalPrice.dart';

class MyBasket extends StatefulWidget {
  const MyBasket({Key key}) : super(key: key);

  @override
  _MyBasketState createState() => _MyBasketState();
}

class _MyBasketState extends State<MyBasket> {
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        key: Key("basketPage"),
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          backIcon: true,
          text: "My Basket",
          widget: SizedBox(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Image
              Image.asset(
                "assets/images/profile.jpg",
                height: 350,
              ),
              //My products which are i added to basket
              Center(
                child: Container(
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: TotalPrice().productsName.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(
                          Icons.arrow_right,
                          color: secondaryColor,
                        ),
                        title: CustomText(
                            color: Colors.black,
                            sizes: Sizes.small,
                            text: TotalPrice().productsName[index]),
                        trailing: CustomText(
                            color: Colors.blue,
                            sizes: Sizes.small,
                            text:
                                TotalPrice().productsName[index] == "Product 1"
                                    ? "10 Dolars"
                                    : TotalPrice().productsName[index] ==
                                            "Product 2"
                                        ? "20 Dolars"
                                        : "30 Dolars"),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Use discount code
              CustomTextField(
                key: Key("discountCode"),
                controller: codeController,
                hintText: "Enter Your Discount Code",
                keyboardType: TextInputType.number,
                labelText: "Code",
                obscureText: false,
                suffixIcon: Icon(Icons.code),
                topPadding: 10,
              ),
              CustomButton(
                key: Key("useDiscount"),
                label: "Use Code",
                onPressed: () {
                  TotalPrice().addPrice(
                      DiscountFunction.discounFunction(codeController.text));
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => super.widget));
                },
                topPadding: 10,
              ),

              //Total price that user customer to pay
              ListTile(
                leading: Icon(
                  Icons.monetization_on_outlined,
                  color: secondaryColor,
                  size: 35,
                ),
                title: CustomText(
                  color: Colors.black,
                  sizes: Sizes.normal,
                  text: "Total Price",
                ),
                trailing: CustomText(
                  color: Colors.blue,
                  sizes: Sizes.normal,
                  text: "${TotalPrice().totalPrice.toString()} Dolars",
                ),
              ),
              //A button to submit
              CustomButton(
                key: Key("submitButton"),
                label: "Submit",
                topPadding: 10,
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Done !")));
                },
              ),
            ],
          ),
        ));
  }
}
