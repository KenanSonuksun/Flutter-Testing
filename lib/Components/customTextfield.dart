import 'dart:ui';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double topPadding;
  final Widget suffixIcon;
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final double height;
  const CustomTextField({
    Key key,
    this.topPadding,
    this.hintText,
    this.controller,
    this.obscureText,
    this.suffixIcon,
    this.keyboardType,
    this.labelText,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.all(topPadding),
        child: TextFormField(
          style: TextStyle(
              height: height,
              color: Colors.black,
              fontSize: size.width > 500 ? 25 : 17),
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[700]),
              gapPadding: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[700]),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[700]),
              gapPadding: 10,
            ),
            hintText: hintText,
            labelText: labelText,
            hintStyle: TextStyle(color: Colors.grey),
            labelStyle: TextStyle(color: Colors.grey),
            helperStyle: TextStyle(color: Colors.black),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ));
  }
}
