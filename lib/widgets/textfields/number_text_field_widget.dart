import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import '../../theme.dart';

class NumberTextFieldWidget extends StatefulWidget {
  final String labelText;
  final int maxLength;
  const NumberTextFieldWidget({
    super.key,
    this.labelText = 'Mobile Number*',
    this.maxLength = 10,
  });

  @override
  State<NumberTextFieldWidget> createState() => _NumberTextFieldWidgetState();
}

class _NumberTextFieldWidgetState extends State<NumberTextFieldWidget> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        FilteringTextInputFormatter.digitsOnly,
      ],
      style: textDecorationTextStyle(
        ColorsConstants.primary,
        fontWeight: FontWeight.w500,
      ),
      maxLength: widget.maxLength,
      onChanged: (val) {
        if (val.length == 10) {
          setState(() => _check = true);
        } else {
          setState(() => _check = false);
        }
      },
      decoration: InputDecoration(
        // labelText: labelText,
        hintText: widget.labelText,
        prefixIcon: const Icon(Icons.smartphone),
        // counter: Offstage(),
        counterStyle: const TextStyle(
          height: double.minPositive,
        ),
        counterText: "",
        suffixIcon: Icon(
          _check ? Icons.check_circle : Icons.close_outlined,
          color: _check ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}
