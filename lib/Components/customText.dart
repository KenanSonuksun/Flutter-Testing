import 'package:flutter/material.dart';

enum Sizes {
  small,
  normal,
  big,
  title,
}

class CustomText extends StatelessWidget {
  final Sizes sizes;
  final String text;
  final Color color;

  const CustomText({this.text, this.color, this.sizes});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Text(text,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: sizes == Sizes.normal
            ? TextStyle(
                color: color,
                fontFamily: 'Muli',
                fontSize: size.width < 390
                    ? 14
                    : size.width > 500
                        ? 22
                        : 17)
            : sizes == Sizes.title
                ? TextStyle(
                    color: color,
                    fontFamily: 'MuliBold',
                    fontWeight: FontWeight.bold,
                    fontSize: size.width < 390
                        ? 16
                        : size.width > 500
                            ? 24
                            : 18)
                : sizes == Sizes.small
                    ? TextStyle(
                        color: color,
                        fontFamily: 'Muli',
                        fontSize: size.width < 390
                            ? 12
                            : size.width > 500
                                ? 20
                                : 14)
                    : TextStyle(
                        color: color,
                        fontFamily: 'Muli',
                        fontSize: size.width < 390
                            ? 16
                            : size.width > 500
                                ? 24
                                : 18));
  }
}
