import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber/page/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController(); //Crear objeto controlador
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });  //Se vincula con el contexto correspondiente
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: SingleChildScrollView( //
          child:Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textLogin(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget _bannerApp() {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
         decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.lightBlue,Colors.blue,Colors.blueAccent,Colors.blue[700],Colors.lightBlueAccent,Colors.blue[900]])),
       // color:Colors.blueAccent,
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text('Facil y rapido ',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: 'Pacifico')),
          ],
        ),
      ),
    );
  }//termina método _bannerApp()
    
  Widget _textDescription(){
      return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Text(
          'Continua con ...',
          style: TextStyle(
            color: Colors.black54,
          fontSize: 24,
      ),
    ),
    
  );
}
  Widget _textLogin(){
      return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.black54,
          fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  } //textLogin
  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController,  //Se define el controlador
        decoration: InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electronico',
          suffix: Icon(
            Icons.email_outlined,
            color: Colors.black54,
          )
        )
      ),
    );
  } //Termina _textFieldEmail()

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordController, //Se define el controlador
        obscureText: true, //ocultar texto
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffix: Icon(
            Icons.lock_clock_outlined,
            color: Colors.black54,
          )
        )
      ),
    );
  } //Termina _textFieldPassword()

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.login,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(fontSize: 20),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  child: Icon(Icons.arrow_forward_ios),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  radius: 25,
                  ),
                ),
            ),
          ],
        ),  //Modificar elementos de button
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black54)
        ),
      ),
    );
  } //Termina _buttonLogin()

  /*Widget _textDontHaveAccount(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        'No tienes cuenta',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
      
    );
    
  } //Termina _textDontHaveAccount*/

  Widget _textDontHaveAccount(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: _con.goToRegisterPage,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'No tienes cuenta',
                  style: TextStyle( 
                    color: Colors.grey,
                    fontSize: 15),
                  ),
                ),
            )
          ],
        ),  //Modificar elementos de button
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white)
        ),
      ),
    );
  }
  
void goToRegisterPage(BuildContext context) {
  Navigator.pushNamed(context, 'register');
}
  
}
/*
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber/page/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController(); //Objeto controlador

  @override
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
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textLogin(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount()
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
        'Continua con tu...',
        style: TextStyle(color: Colors.black54, fontSize: 24),
      ),
    );
  } //termina _textDescription

  Widget _textLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Login',
        style: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  } //termina _textLogin

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electrónico',
          suffix: Icon(
            Icons.email_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldEmail

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

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.login, //Método que ejecuta la acción rnt

        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Iniciar Sesión',
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

  Widget _textDontHaveAccount() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: ElevatedButton(
          child: Text(
            'No tienes cuenta',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ));
  }
}*/