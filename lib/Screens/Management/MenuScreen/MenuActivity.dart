import 'package:flutter/material.dart';
import '../../../../Model/Staff.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản lý thực đơn'),
      ),
      body: Center(
        child: Text(
          'This show Foods\'s list',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}