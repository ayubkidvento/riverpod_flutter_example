import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers.dart';

class ProviderWidget extends StatelessWidget {
  const ProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final name = ref.watch(nameProvider);
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: boxDecoration(),
          child: Text('PROVIDER $name'),
        );
      },
    );
  }
}
