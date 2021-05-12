import 'package:flutter/material.dart';
import 'package:clinic/models/careStaff.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clinic/screens/addCareStaff.dart';

import 'addCareStaff.dart';

class CareStaffScreen extends StatefulWidget {
  @override
  _CareStaffScreenState createState() => _CareStaffScreenState();
}

class _CareStaffScreenState extends State<CareStaffScreen> {
  List<CareStaff> careStaffs = [
    CareStaff('1066285875', 'notpic', 'Mario', 'Mendoza', 'Medico General', 0,
        0, '123'),
    CareStaff(
        '8677482', 'notpic', 'Ricardo', 'Mendoza', 'Odntologo', 1, 1, '123'),
    CareStaff('26825680', 'notpic', 'Nurys', 'Rodriguez', 'Trabajadora Social',
        1, 1, '123'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal de atención'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: careStaffs.length,
          itemBuilder: (context, index) {
            return cardContact(
                careStaffs[index].photo,
                careStaffs[index].name,
                careStaffs[index].lastName,
                careStaffs[index].careStaffId,
                careStaffs[index].turn,
                (careStaffs[index].state == 1) ? Colors.green : Colors.red);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.plus),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddCareStaff()));
        },
      ),
    );
  }

  Widget cardContact(String profilePicture, String name, String lastName,
      String code, int turn, Color color) {
    return InkWell(
      child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 7),
          child: Card(
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(profilePicture),
                        radius: 35,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "$name $lastName",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'C.C. $code',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text('Cargo. $turn')
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: color,
                      radius: 7,
                    )
                  ],
                ),
              ))),
    );
  }
}
