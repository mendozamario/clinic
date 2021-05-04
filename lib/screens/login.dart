import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController usernameController;
  TextEditingController passwordController;

  var urlImage = 'https://seeklogo.com/images/H/hospital-clinic-plus-logo-7916383C7A-seeklogo.com.png';

  @override
  void initState() { 
    super.initState();
    
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: createFormUI(),
    );
  }

  Widget formDesign(String text, TextEditingController controller, Icon icon) {
    return Container(
      padding: EdgeInsets.all(20.0),
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
      )
    );
  }

  Widget buttonDesign() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text('Iniciar Sesion'.toUpperCase(), style: TextStyle(color: Colors.white),),
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

  Widget imageContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
      margin: EdgeInsets.all(50.0),
      child: Image.network(urlImage),
    );
  }

  Widget forgotPassword() {
    return Container(
      child: InkWell(
        child: Text('Has olvidado la contraseña?', style: TextStyle(color: Colors.lightGreen, decoration: TextDecoration.underline),),
      ),
    );
  }

  Widget createFormUI() {
    return Column(
      children: <Widget>[
        imageContainer(),
        formDesign('Ingrese su usuario', usernameController, Icon(Icons.people)),
        formDesign('Ingrese su contraseña', passwordController, Icon(Icons.lock)),
        buttonDesign(),
        forgotPassword(),
      ],
    );
  }

  forgotPasswordFunction(BuildContext context) {
    showDialog(
      context: context, 
      builder: (_) =>
      AlertDialog(
        title: Text('Olvide mi contraseña'),
        content: Text('Desea que se le envie la contraseña a su correo electronico'),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text('Aceptar')
          )
        ],
      )
    );
  }
}