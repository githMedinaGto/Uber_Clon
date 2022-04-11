import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber/page/home/home_controller.dart';
import 'package:uber/main.dart';

class HomePage extends StatelessWidget {
  //Definir un controlador
  HomeController _con = new HomeController();

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _con.init(context); //que el controlador utilice ese contexto
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.lightBlue,Colors.blue,Colors.blueAccent,Colors.blue[700],Colors.lightBlueAccent,Colors.blue[900]])),
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  color: Colors.white,
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
              ),
              SizedBox(height: 50),
              Text(
                'SELECCIONAR TU ROL ',
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: _con.goToLoginPage, //Manejo de evento con el controlador
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/pasajero.png'),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              Text('Cliente', style: TextStyle(color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  goToLoginPage(context);
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/driver.png'),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              Text('Conductor', style: TextStyle(color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: _con.goToMapaPage,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/my_location_blue.png'),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              Text('Mapa', style: TextStyle(color: Colors.white)),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void goToLoginPage(BuildContext context) {
  Navigator.pushNamed(context, 'login');
}

void goToMapaPage(BuildContext context) {
 Navigator.pushNamed(context, 'mapa');
}

void goToRegisterPage(BuildContext context) {
  Navigator.pushNamed(context, 'register');
}