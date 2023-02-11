import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers.dart';

class StateNotifierProviderWidget extends ConsumerWidget {
  const StateNotifierProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Container(
      decoration: boxDecoration(),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text('STATE NOTIFIER provider'),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (val) =>
                      ref.read(userProvider.notifier).changeName(val),
                  decoration: const InputDecoration(
                    hintText: 'Type to name...',
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (val) =>
                      ref.read(userProvider.notifier).changeAge(val),
                  decoration: const InputDecoration(
                    hintText: 'Type to age...',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          text('USER: ${user.toString()}'),
        ],
      ),
    );
  }
}
