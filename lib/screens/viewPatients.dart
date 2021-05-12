import 'package:clinic/models/patients.dart';
import 'package:clinic/screens/addPatients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PatientsScreen extends StatefulWidget {
  @override
  _PatientsScreenState createState() => _PatientsScreenState();
}

class _PatientsScreenState extends State<PatientsScreen> {

  List<Patient> patients = [
    Patient('1066285875', 'img/Mario', 'Mario Mendoza', '11/02/2002', 19, 'Cra 19 e 2 # 9a - 42', 'El Amparo', 3023904474, 'Valledupar', true),
    Patient('26825680', 'img/Nurys', 'Nurys Rodriguez', '09/11/1955', 65, 'Cra 19 e 2 # 9a - 42', 'El Amparo', 3008152412, 'Valledupar', true),
    Patient('8677482', 'img/Ricardo', 'Ricardo Mendoza', '13/01/1955', 65, 'Cra 19 e 2 # 9a - 42', 'El Amparo', 3017602963, 'Valledupar', true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pacientes'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: patients.length,
          itemBuilder: (context, index){
            return cardContact(patients[index].picture, patients[index].fullName, patients[index].code, patients[index].phone.toString(), Colors.red);
          }
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.plus),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPatients()
            )
          );
        },
      ),
    );
  }

  Widget cardContact(String profilePicture, String name, String code, String phone, Color color) {
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
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'C.C. ${code}',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  Text('Tel. ${phone}')
                ],
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: color,
                radius: 7,
              )
            ],
          ),
        )
      )
      ),
    );
  }

  deletePatient(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Eliminar Paciente'),
        content: Text('Esta seguro de eliminar este paciente'),
        actions: <Widget>[
          TextButton(
            child: Text('Cancelar')
          ),
          TextButton(
            child: Text('Aceptar'),
          )
        ],
      )
    );
  }
}