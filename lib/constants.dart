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
