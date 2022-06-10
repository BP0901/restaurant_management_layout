import 'package:flutter/material.dart';
import 'package:restaurant_management/Screens/Management/StaffScreen/StaffListView.dart';
import '../../../../Model/Staff.dart';
import '../componments/DrawerMGTM.dart';
import '../../../Util/constants.dart';

class StaffPage extends StatefulWidget {
  @override
  State<StaffPage> createState() => _StaffPage();
}

class _StaffPage extends State<StaffPage> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //In this lesson, we need to add AppBar and more "Add" button
    //This must be Scaffold!. not MaterialApp !
    return Scaffold(
        drawer: DrawerMGTM(),
        appBar: AppBar(
          title: const Text('Quản lý nhân viên'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        key: _scaffoldKey,
        body: SafeArea(
          minimum: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                //In this lesson, we will replace the input form with "Modal Bottom Sheet"
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  findStaff(),
                  StaffList(),
                ],
              ),
            ),
          ),
        ));
  }
}

class findStaff extends StatelessWidget {
  const findStaff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10, bottom: 20),
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
            hintText: "Tìm kiếm nhân viên",
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
