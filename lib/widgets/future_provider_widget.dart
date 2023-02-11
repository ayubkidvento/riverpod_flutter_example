import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants.dart';
import '../providers.dart';

class FutureProviderWidget extends ConsumerWidget {
  const FutureProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: boxDecoration(),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text('future provider'),
          const SizedBox(height: 6),
          ref.watch(futureProvider).when(
                data: (data) => text('FUTURE DATA ${data.toString()}'),
                error: (Object error, StackTrace stackTrace) =>
                    text('ERROR... ${error.toString()}'),
                loading: () => text('loading...'),
              )
        ],
      ),
    );
  }
}
