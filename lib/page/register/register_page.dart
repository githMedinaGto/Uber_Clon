import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber/page/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController(); //Objeto controlador

  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textRegister(),
            _textFieldNombre(),
            _textFielApellido(),
            _textFielTelefono(),
            _textFielCiudad(),
            _textFielCp(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonRegister()
          ],
        ),
      ),
    );
  } //termina build

  Widget _bannerApp() {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: const [Colors.white, Colors.black54]),
        ),
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text(
              'Fácil y Rápido',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 50,
                  fontFamily: 'DanielDavis'),
            )
          ],
        ),
      ),
    );
  } //Terminar _bannerApp

  Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Bienvenido debes registrar una cuenta...',
        style: TextStyle(color: Colors.black54, fontSize: 24),
      ),
    );
  } //termina _textDescription

  Widget _textRegister() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Registro',
        style: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  } //termina _textLogin
// termina _textFieldEmail

  Widget _textFieldNombre() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.nombreController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'Nombre',
          labelText: 'Nombre',
          suffix: Icon(
            Icons.account_circle,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFielApellido() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller:
            _con.apellidoController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'Apellidos',
          labelText: 'Apellidos',
          suffix: Icon(
            Icons.assignment_ind,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFielTelefono() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller:
            _con.telefonoController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'telefono',
          labelText: 'telefono',
          suffix: Icon(
            Icons.phone_iphone,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFielCiudad() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.ciudadController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'Ciudad',
          labelText: 'Ciudad',
          suffix: Icon(
            Icons.location_city,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFielCp() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.cpController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'Codigo Postal',
          labelText: 'Codigo Postal',
          suffix: Icon(
            Icons.add_location_alt,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electrónico',
          suffix: Icon(
            Icons.email_rounded,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordController, //Controlador de password
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffix: Icon(
            Icons.lock_clock_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } //termina _textFieldPassword

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.register, //Método que ejecuta la acción rnt

        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Registro completo',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  child: Icon(Icons.arrow_forward_ios),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  radius: 25,
                ),
              ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)),
      ),
    );
  } //termina _buttonLogin

  
}
