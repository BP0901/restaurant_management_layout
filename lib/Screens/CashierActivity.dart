import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_management/Screens/PayInformation.dart';

class CashierActivity extends StatefulWidget {
  CashierActivity({Key? key}) : super(key: key);

  @override
  State<CashierActivity> createState() => _CashierActivityState();
}

class _CashierActivityState extends State<CashierActivity> {
  showRequestInfomation(name) {
    Get.to(PayInformationTable(name: "bàn số $name"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Yêu cầu thanh toán",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () =>
                      Get.to(PayInformationTable(name: "Bàn số $index")),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 0, 8),
                        child: Text("bàn số $index"),
                      )),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
