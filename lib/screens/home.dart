import 'dart:ui';

import 'package:clinic/screens/viewCareStaff.dart';
import 'package:clinic/screens/viewPatients.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        title: Text(
          'Home',
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.ytimg.com/vi/BKnTiuGRt2U/maxresdefault.jpg'),
                  repeat: ImageRepeat.repeatY
                )
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              ),
              title: Text('Mario Mendoza'),
              subtitle: Text('Ingeniero de sistemas'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.userInjured),
              title: Text(
                'Pacientes',
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PatientsScreen()
                  )
                );
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.hospitalUser),
              title: Text(
                'Personal de atención',
              ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => CareStaffScreen()
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}