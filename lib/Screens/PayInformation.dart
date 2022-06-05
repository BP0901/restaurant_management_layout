import 'package:flutter/material.dart';
import 'package:restaurant_management/Util/constants.dart';

class PayInformationTable extends StatefulWidget {
  const PayInformationTable({Key? key, required this.name}) : super(key: key);

  final name;

  @override
  State<PayInformationTable> createState() => _PayInformationTableState();
}

class _PayInformationTableState extends State<PayInformationTable> {
  @override
  Widget build(BuildContext context) {
    // TableRow buildBillInfomation() {
    //   return const TableRow(children: [
    //     const Center(
    //         child: Text(
    //       "Món ăn",
    //       textScaleFactor: 1.5,
    //       style: TextStyle(color: Colors.white),
    //     )),
    //     const Center(
    //         child: Text(
    //       "SL",
    //       textScaleFactor: 1.5,
    //       style: TextStyle(color: Colors.white),
    //     )),
    //     Center(
    //         child: Text(
    //       "Giá",
    //       textScaleFactor: 1.5,
    //       style: TextStyle(color: Colors.white),
    //     )),
    //     Center(
    //         child: Text(
    //       "Tổng",
    //       textScaleFactor: 1.5,
    //       style: TextStyle(color: Colors.white),
    //     )),
    //   ]);
    // }

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: kSecondaryColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.name,
                textScaleFactor: 2,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: DataTable(
                      columns: const [
                        DataColumn(
                          label: Text(
                            'Món ăn',
                            textScaleFactor: 1.5,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'SL',
                            textScaleFactor: 1.5,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Giá',
                            textScaleFactor: 1.5,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tổng',
                            textScaleFactor: 1.5,
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                      rows: List<DataRow>.generate(
                          20,
                          (index) => const DataRow(cells: <DataCell>[
                                DataCell(Text('data1')),
                                DataCell(Text('data2')),
                                DataCell(Text('data3')),
                                DataCell(Text('data4')),
                              ])),
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
