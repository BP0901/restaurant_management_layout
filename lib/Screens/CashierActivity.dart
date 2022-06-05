import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_management/Screens/PayInformation.dart';
import 'package:restaurant_management/Util/constants.dart';

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
      body: Container(
        decoration: const BoxDecoration(color: kSecondaryColor),
        child: Column(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Center(
                    child: Text(
                  "Yêu cầu thanh toán",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                          padding: const EdgeInsets.fromLTRB(10, 12, 0, 12),
                          child: Text(
                            "bàn số $index",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                        )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
