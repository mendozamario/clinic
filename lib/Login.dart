import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clinic/BackLogin.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController;
  TextEditingController passwordController;

  @override
  void initState() { 
    super.initState();

    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackLogin(),
          credentials(),
        ],
      )
    );
  }

  Widget credentials() {
    return Center(
        child: Container(
        alignment: Alignment.center,
        width: 350.0,
        height: 145.0,
        child: Card(
          elevation: 5.0,
          child: Column(
            children: <Widget>[
              textFormDesign(usernameController, 'Username', Icon(Icons.perm_identity)),
              textFormDesign(passwordController, 'Password', Icon(Icons.vpn_key_outlined)),
            ],
          ),
        )
      ),
    );
  }

  Widget textFormDesign(TextEditingController controller, String label, Icon icon) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.all(Radius.circular(10))
          ),
          prefixIcon: icon,
          labelText: label,
        ),
      ),
    );
  }

}