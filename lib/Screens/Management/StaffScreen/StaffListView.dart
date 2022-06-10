import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../Model/Staff.dart';
import '../../../Util/constants.dart';

class StaffList extends StatelessWidget {
  final int index = 20;
  ListView _buildListView() {
    return ListView.builder(
        itemCount: index,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: (index) % 2 == 0 ? kSecondaryColor : kSupColor,
                elevation: 10,
                //this lesson will customize this ListItem, using Column and Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          'Nhân viên $index',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.red[400]),
                        ),
                        Text('ID: ',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Gender: ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            Text('Date: ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            Padding(padding: EdgeInsets.only(bottom: 10)),
                          ],
                        ),
                        Text('Role: ',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                      ],
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Locker',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        )
                      ],
                    ))
                  ],
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //Now how to make this "Scrollable", let use ListView:
    //1.ListView(children: <Widget>[]) => this loads all children at the same time
    //2.ListView(itemBuilder: ...) => this loads only visible items
    return Container(height: 500, child: _buildListView());
  }
}
