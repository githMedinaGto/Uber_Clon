import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController nombreController = new TextEditingController();
  TextEditingController apellidoController = new TextEditingController();
  TextEditingController telefonoController = new TextEditingController();
  TextEditingController ciudadController = new TextEditingController();
  TextEditingController cpController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void register() {
    String nombre = nombreController.text;
    String apellido = apellidoController.text;
    String email = emailController.text;
    String telefono = telefonoController.text;
    String password = passwordController.text;
    String ciudad = ciudadController.text;
    String cp = cpController.text;

    print('$nombre $apellido $email $telefono $password $ciudad $cp');
  }

  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}
