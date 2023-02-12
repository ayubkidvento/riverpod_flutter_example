import 'package:flutter/material.dart';
import 'package:riverpod_flutter_example/constants.dart';

ThemeData theme() => ThemeData(
      primaryColor: Colors.blueGrey,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorsConstants.primary,
        selectionHandleColor: ColorsConstants.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        isDense: true,
        alignLabelWithHint: true,
        fillColor: ColorsConstants.primary.withOpacity(.1),
        border: outlineInputBorder(Colors.white),
        enabledBorder: outlineInputBorder(Colors.white),
        focusedBorder: outlineInputBorder(Colors.white),
        disabledBorder: outlineInputBorder(Colors.grey),
        errorBorder: outlineInputBorder(const Color(0xFFF65054)),
        focusedErrorBorder: outlineInputBorder(const Color(0xFFF65054)),
        labelStyle: textDecorationTextStyle(ColorsConstants.primary),
        hintStyle: textDecorationTextStyle(ColorsConstants.primary),
        errorStyle: textDecorationTextStyle(Colors.red),
        helperStyle: textDecorationTextStyle(Colors.black),
        suffixIconColor: ColorsConstants.primary,
        prefixIconColor: ColorsConstants.primary,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
        ),
      ),
    );

TextStyle textDecorationTextStyle(
  Color color, {
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 13,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: .5,
      color: color,
    );

OutlineInputBorder outlineInputBorder(Color color) => OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
      borderRadius: BorderRadius.circular(10),
    );
