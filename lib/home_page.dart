import 'package:flutter/material.dart';

import 'widgets/future_provider_widget.dart';
import 'widgets/provider_widget.dart';
import 'widgets/change_notifier_provider_widget.dart';
import 'widgets/state_notifier_provider_widget.dart';
import 'widgets/state_provider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Flutter Provider Example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProviderWidget(),
          SizedBox(height: 12),
          StateProviderWidget(),
          SizedBox(height: 12),
          StateNotifierProviderWidget(),
          SizedBox(height: 12),
          ChangeNotifierProviderWidget(),
          SizedBox(height: 12),
          FutureProviderWidget(),
        ],
      ),
    );
  }
}
