import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_management/Screens/TableInfomationActivity.dart';

import '../Util/constants.dart';

class WaiterActivity extends StatefulWidget {
  WaiterActivity({Key? key}) : super(key: key);

  @override
  State<WaiterActivity> createState() => _WaiterActivityState();
}

class _WaiterActivityState extends State<WaiterActivity> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    const MenuFood(),
    const ManageTable(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _children[_currentIndex],
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
            backgroundColor: kSupColor,
            selectedItemColor: kPrimaryColor,
            elevation: 20,
            onTap: onTabTapped,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: "Bàn ăn",
              ),
            ]),
      ),
    );
  }
}

class MenuFood extends StatefulWidget {
  const MenuFood({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuFood> createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  var _cateIndex = 0;

  chooseCategory(chooseIndex) {
    _cateIndex = chooseIndex;
  }

  foodCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Image.asset("assets/images/pizza_pic.jpg"),
                Container(
                  decoration: const BoxDecoration(color: kSecondaryColor),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Tên món ăn",
                            textScaleFactor: 1.5,
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "100.000đ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: kSupColor,
        ),
        child: Column(
          children: [
            const findFood(),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _cateIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: index == _cateIndex
                                  ? kPrimaryColor
                                  : kSecondaryColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  "assets/images/pizza.png",
                                ),
                              ),
                              Text(
                                "Loại món ăn $index",
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) => foodCard(index)),
            ),
          ],
        ),
      ),
    );
  }
}

class findFood extends StatelessWidget {
  const findFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, right: 50),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            focusColor: kPrimaryColor,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            filled: true,
            fillColor: kSecondaryColor,
            hintText: "Tìm kiếm món ăn",
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class ManageTable extends StatelessWidget {
  const ManageTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    tableRow(int index) {
      return InkWell(
        onTap: () => Get.to(TableInfomationActivity(tableName: index)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(color: kSecondaryColor),
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bàn ăn $index",
                    textScaleFactor: 1.5,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "(Trạng Thái)",
                    textScaleFactor: 1.5,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Container(
        decoration: const BoxDecoration(
          color: kSupColor,
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => tableRow(index),
        ));
  }
}
