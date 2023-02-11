import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter_example/model/user.dart';

// provides read only value
final nameProvider = Provider<String>((ref) => 'VIRUS');

// provides value that can be changed from outside (basically int, string, float, bool)
final stateProvider = StateProvider<String?>((ref) => null);

// statenotifier & statenotifierprovider
// combination of provider and stateprovider which can be used with playing around with complex data like map, list
// class which is being returned and the data which is being returned by the class it self
final userProvider =
    StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier());

// value can be changed from outside the class but not in other providers
final userChangeProvider =
    ChangeNotifierProvider((ref) => UserChangeNotifier());

final futureProvider = FutureProvider(
  (ref) async => await Future.delayed(
    const Duration(seconds: 1),
    () => 1,
  ),
);



// NOTE:- ALL THE NOTIFIERS ARE IMMUTABLE EXCEPT CHANGENOTIIER(IMPOSTER)