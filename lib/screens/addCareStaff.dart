import 'package:flutter/material.dart';

class AddCareStaff extends StatefulWidget {
  AddCareStaff({Key key}) : super(key: key);

  @override
  _AddCareStaffState createState() => _AddCareStaffState();
}

class _AddCareStaffState extends State<AddCareStaff> {

  TextEditingController codeController;
  TextEditingController pictureController;
  TextEditingController nameController;
  TextEditingController lastNameController;
  TextEditingController typeController;
  TextEditingController statusController;
  TextEditingController workingController;

  @override
  void initState() { 
    super.initState();
    
    codeController = TextEditingController();
    pictureController = TextEditingController();
    nameController = TextEditingController();
    lastNameController = TextEditingController();
    typeController = TextEditingController();
    statusController = TextEditingController();
    workingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: SingleChildScrollView(
         child: createFormUI(),
       ),
    );
  }

  Widget formDesign(TextEditingController controller, String text, Icon icon) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: text,
          hintStyle: TextStyle(color: Colors.lightGreen),
          filled: true,
          fillColor: Colors.white70,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightGreen, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightGreen),
          ),
          prefixIcon: icon,
          suffix: GestureDetector(
            child: Icon(Icons.cancel),
            onTap: (){
              controller.clear();
            },
          )
        )
      ),
    );
  }

  Widget buttonDesign() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ElevatedButton(
        child: Text('Guardar personal'.toUpperCase(), style: TextStyle(fontSize: 18.0, color: Colors.white),),  
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
        Text('AGREGAR PACIENTE', style: TextStyle(fontSize: 34.0, color: Colors.lightGreen, fontWeight: FontWeight.bold),),
        formDesign(codeController, 'Ingrese su codigo', Icon(Icons.cancel)),
        formDesign(pictureController, 'Ingrese su imagen', Icon(Icons.cancel)),
        formDesign(nameController, 'Ingrese su Nombre', Icon(Icons.cancel)),
        formDesign(lastNameController, 'Ingrese su apellido', Icon(Icons.cancel)),
        formDesign(typeController, 'Ingrese su tipo', Icon(Icons.cancel)),
        formDesign(statusController, 'Ingrese su estado', Icon(Icons.cancel)),
        formDesign(workingController, 'Ingrese su estado de trabajo', Icon(Icons.cancel)),
        buttonDesign(),
      ],
    );
  }
}