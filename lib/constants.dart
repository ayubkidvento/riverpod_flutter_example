import 'package:flutter/material.dart';

import 'theme.dart';

Text text(text) => Text(
      text.toUpperCase(),
      style: textDecorationTextStyle(Colors.black),
    );

BoxDecoration boxDecoration() => BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey.shade400,
        width: .5,
      ),
    );

class ColorsConstants {
  static const primary = Colors.blueGrey;
}

class RegexValidators {
  static RegExp emailRegex = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
}
