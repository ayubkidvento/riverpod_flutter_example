import 'package:flutter/material.dart';

import 'constants.dart';
import 'widgets/custom_material_button_widget.dart';
import 'widgets/textfields/email_text_field_widget.dart';
import 'widgets/textfields/number_text_field_widget.dart';
import 'widgets/textfields/password_text_field_widget.dart';
import 'widgets/textfields/text_field_widget.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthScreenFormWidget(),
    );
  }
}

class AuthScreenFormWidget extends StatefulWidget {
  const AuthScreenFormWidget({
    super.key,
  });

  @override
  State<AuthScreenFormWidget> createState() => _AuthScreenFormWidgetState();
}

class _AuthScreenFormWidgetState extends State<AuthScreenFormWidget> {
  bool _loading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: ColorsConstants.primary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const TextFieldWidget(
            labelText: 'Full Name',
            textInputType: TextInputType.name,
          ),
          const SizedBox(height: 10),
          const EmailTextFieldWidget(),
          const SizedBox(height: 10),
          const NumberTextFieldWidget(),
          const SizedBox(height: 10),
          const PasswordTextFieldWidget(),
          const SizedBox(height: 12),
          CustomMaterialButtonWidget(
            loading: _loading,
            onPressed: () {
              setState(() => _loading = true);
              Future.delayed(
                const Duration(seconds: 3),
                () => setState(() => _loading = false),
              );
            },
            title: 'Submit',
          ),
        ],
      ),
    );
  }
}
