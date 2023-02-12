import 'package:flutter/material.dart';
import 'package:riverpod_flutter_example/theme.dart';

import 'loader.dart';

class CustomMaterialButtonWidget extends StatelessWidget {
  final bool loading;
  final IconData? iconData;
  final String? title;
  final Function() onPressed;
  final Color bgColor;
  final Color? iconColor;
  final double padding;
  final bool isIcon;
  final double radius;
  final double elevation;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomMaterialButtonWidget({
    Key? key,
    this.loading = false,
    this.iconData,
    this.title,
    required this.onPressed,
    this.bgColor = Colors.blueGrey,
    this.iconColor,
    this.padding = 6,
    this.isIcon = false,
    this.radius = 10,
    this.elevation = 0,
    this.iconSize = 18,
    this.fontSize = 13,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 42,
      onPressed: loading == true ? null : onPressed,
      elevation: elevation,
      disabledColor: Colors.grey.shade200,
      disabledElevation: 0,
      focusElevation: elevation,
      highlightElevation: elevation,
      hoverElevation: elevation,
      minWidth: 0,
      shape: (isIcon == true && title == null)
          ? const CircleBorder()
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      // padding: EdgeInsets.all(loading == true ? 0 : padding),
      color: bgColor,
      child: loading == false
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isIcon == true)
                  Icon(
                    iconData,
                    size: iconSize,
                    color: iconColor ?? Colors.blueGrey,
                  ),
                SizedBox(width: isIcon == true && title != null ? 6 : 0),
                if (title != null)
                  Text(
                    title!,
                    style: textDecorationTextStyle(
                      Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            )
          : const Loader(),
    );
  }
}
