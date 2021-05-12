import 'package:flutter/material.dart';

class CareStaffScreen extends StatefulWidget {

  @override
  _CareStaffScreenState createState() => _CareStaffScreenState();
}

class _CareStaffScreenState extends State<CareStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal de atención'),
      ),
    );
  }
}