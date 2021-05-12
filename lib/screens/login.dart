import 'package:flutter/material.dart';
import 'package:clinic/screens/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    usernameController = new TextEditingController();
    passwordController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: <Widget>[
            buildImage(),
            createForm(),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget buildForm(TextEditingController controller, String title, Icon icon) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.black),
          ),
          labelText: title,
          prefixIcon: icon,
        ),
      ),
    );
  }

  Widget createForm() {
    return Container(
      child: Column(
        children: <Widget>[
          buildForm(
              usernameController, "Nombre de Usuario", Icon(Icons.people)),
          buildForm(passwordController, "Contraseña", Icon(Icons.vpn_key)),
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Image.network(
          'https://seeklogo.com/images/H/hospital-clinic-plus-logo-7916383C7A-seeklogo.com.png'),
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 2, 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        child: Text('Iniciar Sesion'.toUpperCase(),
            style: TextStyle(color: Colors.white, fontSize: 18.0)),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Colors.white))),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }
}
