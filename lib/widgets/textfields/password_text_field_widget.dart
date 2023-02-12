import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  final String labelText;
  const PasswordTextFieldWidget({
    super.key,
    this.labelText = 'Password*',
  });

  @override
  State<PasswordTextFieldWidget> createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_visible,
      keyboardType: TextInputType.visiblePassword,
      style: textDecorationTextStyle(
        ColorsConstants.primary,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        // labelText: widget.labelText,
        hintText: widget.labelText,
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() => _visible = !_visible);
          },
          child: Icon(
            !_visible ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}