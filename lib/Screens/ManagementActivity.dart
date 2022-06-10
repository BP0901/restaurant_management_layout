import 'package:flutter/material.dart';

class ManagermentActivity extends StatefulWidget {
  const ManagermentActivity({Key? key}) : super(key: key);

  @override
  State<ManagermentActivity> createState() => _ManagermentActivityState();
}

class _ManagermentActivityState extends State<ManagermentActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Trang quản lý thông tin")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
