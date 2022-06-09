import 'dart:core';
import 'package:flutter/material.dart';

class Staff {
  //this is called "model"
  String id;
  String name;
  int gender;
  DateTime birth;
  String username;
  String password;
  String role;
  bool disable;

  Staff(
      {required this.id,
      required this.name,
      required this.gender,
      required this.birth,
      required this.username,
      required this.password,
      required this.role,
      required this.disable});
}
