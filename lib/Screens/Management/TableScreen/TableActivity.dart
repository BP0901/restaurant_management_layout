import 'package:flutter/material.dart';
import '../../../../Model/Staff.dart';

class TablePage extends StatefulWidget {
  @override
  State<TablePage> createState() => _TablePage();
}

class _TablePage extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản lý bàn ăn'),
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
