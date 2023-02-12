import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelText;
  // final IconData
  final TextInputType textInputType;
  const TextFieldWidget({
    super.key,
    required this.labelText,
    this.textInputType = TextInputType.text,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      style: textDecorationTextStyle(
        ColorsConstants.primary,
        fontWeight: FontWeight.w500,
      ),
      onChanged: (val) {
        if (val.length > 3) {
          setState(() => _check = true);
        } else {
          setState(() => _check = false);
        }
      },
      decoration: InputDecoration(
        // labelText: labelText,
        hintText: widget.labelText,
        prefixIcon: const Icon(Icons.person),
        suffixIcon: Icon(
          _check ? Icons.check_circle : Icons.close_outlined,
          color: _check ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
