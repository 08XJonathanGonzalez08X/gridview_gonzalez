import 'package:flutter/material.dart';
import 'package:gonzalez/gridviewarticulos.dart';

void main() {
  runApp(UberApp());
}

class UberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  }
}
