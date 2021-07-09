import 'package:flutter/material.dart';
import 'package:testing_project/Components/appBar.dart';
import 'package:testing_project/Components/constants.dart';
import 'package:testing_project/Components/customButton.dart';
import 'package:testing_project/Components/customTextfield.dart';
import 'package:testing_project/HomePage/homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      key: Key("loginPage"),
      appBar: CustomAppBar(
        backIcon: false,
        text: "Login Page",
        widget: SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.jpg",
                key: Key("loginImage"),
              ),
              CustomTextField(
                key: Key("email"),
                controller: emailController,
                hintText: "Enter Email",
                labelText: "Email",
                obscureText: false,
                suffixIcon: Icon(
                  Icons.email,
                  color: primaryColor,
                ),
                keyboardType: TextInputType.emailAddress,
                topPadding: 10,
              ),
              CustomTextField(
                key: Key("password"),
                controller: passwordController,
                hintText: "Enter Password",
                labelText: "Password",
                obscureText: true,
                suffixIcon: Icon(
                  Icons.security,
                  color: primaryColor,
                ),
                keyboardType: TextInputType.visiblePassword,
                topPadding: 10,
              ),
              CustomButton(
                key: Key("loginButton"),
                label: "Login",
                onPressed: () {
                  if (emailController.text == "email@gmail.com" &&
                      passwordController.text == "123456") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Email or Password is wrong")));
                  }
                },
                topPadding: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
