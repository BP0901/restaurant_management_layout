import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_management/Screens/login_screen.dart';
import 'components/flash_message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
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
        title: Text("My Restaurant"),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Get.to(const SigninScreen());
            },
            child: const Text("Trang login")),
            OutlinedButton(onPressed: () {}, child: Text("Trang NV phục vụ")),
            OutlinedButton(onPressed: () {}, child: Text("Trang NV kho")),
            OutlinedButton(onPressed: () {}, child: Text("Trang NV bếp")),
            OutlinedButton(onPressed: () {}, child: Text("Trang NV thu ngân")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: FlashMessageScreen(
                  type: "Thông báo",
                  content : "nội dung",
                  color : Colors.red
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                elevation: 0,
                ),
              );
            }, child: const Text("Message")),
          ],
        ),
      ),
     
    );
  }
}
