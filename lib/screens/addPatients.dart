import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AddPatients extends StatefulWidget {

  @override
  _AddPatientsState createState() => _AddPatientsState();
}

class _AddPatientsState extends State<AddPatients> {

  TextEditingController codeController;
  TextEditingController pictureController;
  TextEditingController fullNameController;
  TextEditingController lastNameController;
  TextEditingController birthDateController;
  TextEditingController ageController;
  TextEditingController adressController;
  TextEditingController neighborhoodController;
  TextEditingController phoneController;
  TextEditingController cityController;
  TextEditingController statusController;


  @override
  void initState() { 
    super.initState();
    
    codeController = TextEditingController();
    pictureController = TextEditingController();
    fullNameController = TextEditingController();
    lastNameController = TextEditingController();
    birthDateController = TextEditingController();
    ageController = TextEditingController();
    adressController = TextEditingController();
    neighborhoodController = TextEditingController();
    phoneController = TextEditingController();
    cityController = TextEditingController();
    statusController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Paciente'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: createFormUI(),
      ),
    );
  }

  Widget profilePictureDesign() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: ElevatedButton(
        child: Text('Seleccionar Imagen'),
        
      )
    );
  }

  Widget textFieldDesign(TextEditingController controller, String text, TextInputType keyboarType) {
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
                borderRadius: new BorderRadius.all(Radius.circular(10))
              )
            ),
          ),
        ],
      )
    );
  }

  Widget buttonDesign() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text('Guardar paciente'.toUpperCase(), style: TextStyle(fontSize: 18.0, color: Colors.white),),  
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
          ),        ),
      ),
    );
  }

  Widget createFormUI() {
    return Column(
      children: <Widget>[
        profilePictureDesign(),
        textFieldDesign(codeController, 'Codigo', TextInputType.number),
        textFieldDesign(fullNameController, 'Nombre Completo', TextInputType.text),
        textFieldDesign(codeController, 'Fecha de Cumpleaños', TextInputType.datetime),
        textFieldDesign(adressController, 'Dirección de Residencia', TextInputType.text),
        textFieldDesign(neighborhoodController, 'Barrio', TextInputType.text),
        textFieldDesign(phoneController, 'Número Telefonico', TextInputType.number),
        textFieldDesign(cityController, 'Ciudad', TextInputType.text),
        
        buttonDesign(),
      ],
    );
  }
}