import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
    );
  }
}

Future<List<User>> getUsers() async {
  final ref = FirebaseDatabase.instance.reference().child('users');
  final snapshot = await ref.once();

  final usersMap = snapshot.value as Map<dynamic, dynamic>;
  final users = usersMap.entries
      .map((entry) => User.fromJson({...entry.value, 'name': entry.key}))
      .toList();

  return users;
}
