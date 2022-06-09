import 'package:flutter/material.dart';
import 'Management/componments/DrawerMGTM.dart';
import 'Management/MenuScreen/MenuActivity.dart';
import 'Management/StaffScreen/StaffActivity.dart';
import 'Management/TableScreen/TableActivity.dart';

class ManagermentActivity extends StatefulWidget {
  ManagermentActivity({Key? key}) : super(key: key);

  @override
  State<ManagermentActivity> createState() => _ManagermentActivityState();
}

class _ManagermentActivityState extends State<ManagermentActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Trang quản lý thông tin")),
        drawer: DrawerMGTM(),
        body: SafeArea(
          child: gotoManagementStaff(),
        ),
      ),
    );
  }
}

class gotoManagementStaff extends StatelessWidget {
  const gotoManagementStaff({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  StaffPage() //you can send parameters using constructor
              ));
        },
        child: const Text("Quản lý nhân viên"));
  }
}

class gotoManagementMenu extends StatelessWidget {
  const gotoManagementMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  MenuPage() //you can send parameters using constructor
              ));
        },
        child: const Text("Quản lý nhân viên"));
  }
}

class gotoManagementTable extends StatelessWidget {
  const gotoManagementTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TablePage() //you can send parameters using constructor
              ));
        },
        child: const Text("Quản lý nhân viên"));
  }
}
