import 'package:flutter/material.dart';

class AddCareStaff extends StatefulWidget {
  AddCareStaff({Key key}) : super(key: key);

  @override
  _AddCareStaffState createState() => _AddCareStaffState();
}

class _AddCareStaffState extends State<AddCareStaff> {
  TextEditingController codeController;
  TextEditingController pictureController;
  TextEditingController fullNameController;
  TextEditingController typeController;

  bool statusController = false;
  bool workingController = false;

  @override
  void initState() {
    super.initState();

    codeController = TextEditingController();
    pictureController = TextEditingController();
    fullNameController = TextEditingController();
    typeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Personal de Apoyo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: createFormUI(),
      ),
    );
  }

  Widget textFieldDesign(TextEditingController controller, String text,
      TextInputType keyboarType) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 5.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  text,
                  style: TextStyle(),
                ),
              ),
            ),
            TextFormField(
              autofocus: false,
              keyboardType: keyboarType,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.all(Radius.circular(10)))),
            ),
          ],
        ));
  }

  Widget buttonDesign() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text(
          'Guardar personal'.toUpperCase(),
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.white),
            ),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.lightGreen,
          ),
        ),
      ),
    );
  }

  Widget createFormUI() {
    return Column(
      children: <Widget>[
        textFieldDesign(codeController, 'Codigo', TextInputType.number),
        textFieldDesign(
            fullNameController, 'Nombre Completo', TextInputType.text),
        textFieldDesign(typeController, 'Tipo', TextInputType.text),
        createSwitch(statusController, 'Estado'),
        createSwitch(workingController, 'Trabajando'),
        buttonDesign(),
      ],
    );
  }

  Widget createSwitch(bool controller, String label) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: <Widget>[
          new Align(
            alignment: Alignment.topLeft,
            child: Text(
              label,
              style: TextStyle(),
            ),
          ),
          new Align(
            alignment: Alignment.topLeft,
            child: Switch(
              value: controller,
              onChanged: (value) {
                setState(() {
                  controller = value;
                  print(controller);
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.lightGreen,
            ),
          )
        ],
      ),
    );
  }
}
