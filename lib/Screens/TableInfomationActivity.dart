import 'package:flutter/material.dart';
import 'package:restaurant_management/Util/constants.dart';

class TableInfomationActivity extends StatefulWidget {
  TableInfomationActivity({Key? key, required this.tableName})
      : super(key: key);

  final tableName;

  @override
  State<TableInfomationActivity> createState() =>
      _TableInfomationActivityState();
}

class _TableInfomationActivityState extends State<TableInfomationActivity> {
  @override
  Widget build(BuildContext context) {
    var temp = widget.tableName;
    var name = "Bàn ăn $temp";
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: kSupColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              NameAndTotal(name: name),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  columns: const [
                    DataColumn(
                      label: Text(
                        'Món ăn',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'SL',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Giá',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Tổng',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: List<DataRow>.generate(
                      20,
                      (index) => const DataRow(cells: <DataCell>[
                            DataCell(Text(
                              'data1',
                              style: TextStyle(color: Colors.white),
                            )),
                            DataCell(Text(
                              'data2',
                              style: TextStyle(color: Colors.white),
                            )),
                            DataCell(Text(
                              'data3',
                              style: TextStyle(color: Colors.white),
                            )),
                            DataCell(Text(
                              'data4',
                              style: TextStyle(color: Colors.white),
                            )),
                          ])),
                ),
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class NameAndTotal extends StatelessWidget {
  const NameAndTotal({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            name,
            textScaleFactor: 2,
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10, top: 10),
          child: Text(
            "Tổng: 500.000đ",
            textScaleFactor: 2,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
