import 'package:flutter/material.dart';
import 'constants.dart';
import 'customText.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Widget widget;
  final bool backIcon;
//Appbar
  const CustomAppBar({Key key, this.text, this.widget, this.backIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        automaticallyImplyLeading: backIcon,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        centerTitle: true,
        title: CustomText(
          color: Colors.white,
          sizes: Sizes.title,
          text: text,
        ),
        actions: [widget],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55);
}
