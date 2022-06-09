import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_management/Screens/ChefActivity.dart';
import 'package:restaurant_management/Screens/ManagementActivity.dart';
import 'package:restaurant_management/Screens/WaiterActivity.dart';
import 'package:restaurant_management/Screens/login_screen.dart';
import 'components/flash_message.dart';
import 'package:restaurant_management/Screens/ManagementActivity.dart';
import 'package:restaurant_management/Screens/CashierActivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Restaurant"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Login(),
            const gotoWaiterActivity(),
            const goManagementActivity(),
            const ChefScreen(),
            const gotoCashier(),
            const FlashSnackBar(),
          ],
        ),
      ),
    );
  }
}

class gotoWaiterActivity extends StatelessWidget {
  const gotoWaiterActivity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.to(WaiterActivity());
        },
        child: const Text("Trang NV phụ vụ"));
  }
}

class gotoCashier extends StatelessWidget {
  const gotoCashier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.to(CashierActivity());
        },
        child: const Text("Trang NV thu ngân"));
  }
}

class goManagementActivity extends StatelessWidget {
  const goManagementActivity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.to(ManagermentActivity());
        },
        child: const Text("Trang NV quản lý"));
  }
}

class ChefScreen extends StatelessWidget {
  const ChefScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.to(const ChefActivity());
        },
        child: const Text("Trang NV bếp"));
  }
}

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Get.to(const SigninScreen());
        },
        child: const Text("Trang login"));
  }
}

class FlashSnackBar extends StatelessWidget {
  const FlashSnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: FlashMessageScreen(
                  type: "Thông báo", content: "nội dung", color: Colors.red),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          );
        },
        child: const Text("Message"));
  }
}
