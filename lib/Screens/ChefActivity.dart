import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:restaurant_management/Util/constants.dart';

class ChefActivity extends StatefulWidget {
  const ChefActivity({Key? key}) : super(key: key);

  @override
  State<ChefActivity> createState() => _ChefActivityState();
}

class _ChefActivityState extends State<ChefActivity> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const watingListFood(),
    const confirmedListFood(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _children[_currentIndex],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0.5, 3),
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: kSecondaryColor,
          selectedItemColor: kPrimaryColor,
          elevation: 2.0,
          onTap: onTabTapped,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_task),
              label: 'Món cần làm',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Món đang làm',
            ),
          ],
        ),
      ),
    );
  }
}

class confirmedListFood extends StatelessWidget {
  const confirmedListFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSecondaryColor,
      ),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Món cần làm",
                textScaleFactor: 2,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Món ăn $index",
                        style: const TextStyle(color: Colors.white),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_box,
                          color: kPrimaryColor,
                        )),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class watingListFood extends StatelessWidget {
  const watingListFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSecondaryColor,
      ),
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Center(
                  child: Text(
                "Món chờ xác nhận",
                textScaleFactor: 2,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Món ăn $index",
                        style: const TextStyle(color: Colors.white),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_box,
                          color: Colors.green,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          color: Colors.red,
                        ))
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
