import 'dart:ui';

import 'package:flutter/material.dart';

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
    watingListFood(),
    confirmedListFood(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _children[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
    );
  }
}

class confirmedListFood extends StatelessWidget {
  const confirmedListFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text(
              "Món cần làm",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))),
        Expanded(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(child: Text("Món ăn $index")),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.check_box,
                        color: Colors.green,
                      )),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class watingListFood extends StatelessWidget {
  const watingListFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text(
              "Món chờ xác nhận",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ))),
        Expanded(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(child: Text("Món ăn $index")),
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
    );
  }
}
