// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age,
  });

  User copyWith({
    String? name,
    int? age,
  }) =>
      User(
        name: name ?? this.name,
        age: age ?? this.age,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'name': name,
        'age': age,
      };

  factory User.fromMap(Map<String, dynamic> map) => User(
        name: map['name'] as String,
        age: map['age'] as int,
      );

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(name: $name, age: $age)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(User(name: '', age: 0));

  // UserNotifier() : super(User(name: '', age: 0)) {
  //   changeName('changed name');
  //   changeAge('10');
  // }

  changeName(String val) => state = state.copyWith(name: val);
  changeAge(String val) => state = state.copyWith(age: int.parse(val));
}

class UserChangeNotifier extends ChangeNotifier {
  User user = User(name: '', age: 0);

  changeName(String val) {
    user = user.copyWith(name: val);
    notifyListeners();
  }

  changeAge(String val) {
    user = user.copyWith(age: int.parse(val));
    notifyListeners();
  }
}
