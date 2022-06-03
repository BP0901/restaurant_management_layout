import 'package:flutter/material.dart';

class PayInformationTable extends StatefulWidget {
  PayInformationTable({Key? key, required this.name}) : super(key: key);

  final name;

  @override
  State<PayInformationTable> createState() => _PayInformationTableState();
}

class _PayInformationTableState extends State<PayInformationTable> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.name),
    );
  }
}
