import 'package:flutter/material.dart';

ThemeData theme() => ThemeData(
      toggleButtonsTheme: ToggleButtonsThemeData(
        color: Colors.black.withOpacity(0.60),
        selectedColor: const Color(0XFFFFFFFF),
        selectedBorderColor: const Color(0xFFFBAA19),
        fillColor: const Color(0xFFFBAA19),
        splashColor: const Color(0xFFFBAA19).withOpacity(0.12),
        hoverColor: const Color(0xFFFBAA19).withOpacity(0.04),
        borderRadius: BorderRadius.circular(10.0),
        constraints: const BoxConstraints(minHeight: 36.0),
        highlightColor: Colors.transparent,
        textStyle: textDecorationTextStyle(Colors.black54),
      ),
      inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        border: outlineInputBorder(Colors.white),
        enabledBorder: outlineInputBorder(Colors.white),
        focusedBorder: outlineInputBorder(Colors.white),
        disabledBorder: outlineInputBorder(Colors.grey),
        errorBorder: outlineInputBorder(const Color(0xFFF65054)),
        focusedErrorBorder: outlineInputBorder(const Color(0xFFF65054)),
        labelStyle: textDecorationTextStyle(Colors.black54),
        hintStyle: textDecorationTextStyle(Colors.black45),
        errorStyle: textDecorationTextStyle(Colors.red),
        helperStyle: textDecorationTextStyle(Colors.black),
        filled: true,
        isDense: true,
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
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    );
