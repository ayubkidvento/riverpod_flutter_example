import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../theme.dart';

class EmailTextFieldWidget extends StatefulWidget {
  final String labelText;
  const EmailTextFieldWidget({
    super.key,
    this.labelText = 'Email Address*',
  });

  @override
  State<EmailTextFieldWidget> createState() => _EmailTextFieldWidgetState();
}

class _EmailTextFieldWidgetState extends State<EmailTextFieldWidget> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      style: textDecorationTextStyle(
        ColorsConstants.primary,
        fontWeight: FontWeight.w500,
      ),
      onChanged: (val) {
        if (RegexValidators.emailRegex.hasMatch(val)) {
          setState(() => _check = true);
        } else {
          setState(() => _check = false);
        }
      },
      decoration: InputDecoration(
        // labelText: labelText,
        hintText: widget.labelText,
        prefixIcon: const Icon(Icons.email),
        suffixIcon: Icon(
          _check ? Icons.check_circle : Icons.close_outlined,
          color: _check ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
