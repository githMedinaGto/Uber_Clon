/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:uber/page/home/home_page.dart';
import 'package:uber/page/login/login_page.dart';
import 'package:uber/register/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /*return ChangeNotifierProvider(
      child: MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner:
          false, //Este nos sirve para integrar nuebas paginas
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: 'home', //esta es la pagina que inisiara la aplicacion
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
    ),
    );*/
    return MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner:
          false, //Este nos sirve para integrar nuebas paginas
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: 'home', //esta es la pagina que inisiara la aplicacion
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:uber/page/home/home_page.dart';
import 'package:uber/page/login/login_page.dart';
import 'package:uber/page/mapa/mapa_page.dart';
import 'package:uber/page/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'mapa': (BuildContext context) => MapaPage(),
        'registro': (BuildContext context) => RegisterPage(),
      },
    );
  }
}

