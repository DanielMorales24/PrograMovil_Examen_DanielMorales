import 'package:flutter/material.dart';
import 'package:programovil_examen_danielmorales_62241019/screens/Pantalla_Principal.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examen Primer Parcial',
      home: BooksScreen(),
    );
  }
}
