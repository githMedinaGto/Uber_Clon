import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue,Colors.blue,Colors.blueAccent,Colors.blue[700],Colors.lightBlueAccent,Colors.blue[900]]
          )
        ),
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
                    Image.asset('assets/img/logo_app.png',
                    width: 150,
                    height: 100
                    ),
                    Text('Facíl y Rapido'),
                ],
              ),
            ),
          ),
              SizedBox(height: 50),
              Text('Selecciona tu rol', style: TextStyle(color: Colors.white)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/img/pasajero.png'),
                radius: 50,
                backgroundColor: Colors.black,
              ),
              Text('Cliente'),
              SizedBox(height: 10),
              CircleAvatar(
                backgroundImage: AssetImage('assets/img/driver.png'),
                radius: 50,
                backgroundColor: Colors.black,
              ),
              Text('Conductor'),
             ],
          ),
        ),
      ),
    );
  }
}