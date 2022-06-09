import 'dart:core';
import 'package:flutter/material.dart';

class Staff {
  //this is called "model"
  late final String id;
  late final String name;
  late final int gender;
  late final DateTime birth;
  late final String username;
  late final String password;
  late final String role;
  late final bool disable;

  Staff(
      @required this.id,
      @required this.name,
      @required this.gender,
      @required this.birth,
      @required this.username,
      @required this.password,
      @required this.role,
      @required this.disable);
}
