import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber/page/home/home_controller.dart';

class HomePage extends StatelessWidget {
  //Definir objejo controlador
  HomeController _con = new HomeController();

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black, Colors.black45])),
          child: Column(
            children: [
              ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/img/logo_app.png',
                        width: 150,
                        height: 100,
                      ),
                      Text('Fácil y Rápido'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Text('SELECCIONA TU ROL', style: TextStyle(color: Colors.white)),
              GestureDetector(
                onTap: () {
                  goToLoginPage(context);
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/pasajero.png'),
                  radius: 50,
                  backgroundColor: Colors.black,
                ),
              ),
              Text('Cliente', style: TextStyle(color: Colors.white)),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: AssetImage('assets/img/driver.png'),
                radius: 50,
                backgroundColor: Colors.black,
              ),
              Text('Conductor', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }

  void goToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, 'login');
  }
}//Fin de la clase HomePage
