import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers.dart';

class StateProviderWidget extends ConsumerWidget {
  const StateProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(stateProvider);
    return Container(
      decoration: boxDecoration(),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text('STATE NOTIFIER'),
          const SizedBox(height: 6),
          TextField(
            onChanged: (val) =>
                ref.read(stateProvider.notifier).update((state) => val),
            decoration: const InputDecoration(
              hintText: 'Type to change...',
            ),
          ),
          const SizedBox(height: 6),
          text('NAME: ${name ?? ''}'),
        ],
      ),
    );
  }
}
