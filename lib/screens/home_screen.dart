import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';
import 'package:login_app/screens/signup_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  static const routeName = '/welcome';

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cuerpoCenter(context),
    );
  }
}

Widget _cuerpoCenter(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _nombreText(),
        _inicioSesionText(),
        _inicioSesionButton(context),
        _registrarseButton(context),
      ],
    ),
  );
}

Widget _nombreText() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: const Text(
      "Madam Makeup",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget _inicioSesionText() {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: const Text(
      "Bienvenido",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

Widget _inicioSesionButton(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
          child: ElevatedButton(
            child: const Text("Iniciar sesión"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ),
      ),
    ],
  );
}

Widget _registrarseButton(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 5.0),
          child: ElevatedButton(
            child: const Text("Registrarse"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupScreen()),
              );
            },
          ),
        ),
      ),
    ],
  );
}