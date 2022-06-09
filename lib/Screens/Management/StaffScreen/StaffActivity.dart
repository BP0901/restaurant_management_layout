import 'package:flutter/material.dart';
import '../../../../Model/Staff.dart';

class StaffPage extends StatefulWidget {
  @override
  State<StaffPage> createState() => _StaffPage();
}

class _StaffPage extends State<StaffPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Quản lý nhân viên'),
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
