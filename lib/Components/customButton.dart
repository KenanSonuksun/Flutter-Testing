import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double topPadding;

  const CustomButton({Key key, this.label, this.onPressed, this.topPadding})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Container(
        width: size.width * 0.95,
        height: size.height * 0.06,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primaryColor)),
          child: Text(label,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width < 500 ? 17.0 : 24.0,
                  fontFamily: '')),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
