import 'package:flutter/material.dart';

class ConductorPages extends StatefulWidget {
  ConductorPages({Key key}) : super(key: key);

  @override
  State<ConductorPages> createState() => _ConductorPagesState();
}

class _ConductorPagesState extends State<ConductorPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Text('Pantalla del Login....'),
      ),
    );
  }
}
