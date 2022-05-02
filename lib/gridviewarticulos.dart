import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/descarga.jpg",
    "assets/images/autoo.jpg",
    "assets/images/lal.jpg",
    "assets/images/puerta.webp",
    "assets/images/uber.webp",
    "assets/images/volante.webp",
    "assets/images/lilo.jpg",
    "assets/images/lolio.webp",
    "assets/images/descarga.jpg",
    "assets/images/autoo.jpg",
    "assets/images/lal.jpg",
    "assets/images/puerta.webp",
    "assets/images/uber.webp",
    "assets/images/volante.webp",
    "assets/images/lilo.jpg",
    "assets/images/lolio.webp",
  ]; // lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("listado de articulos v2"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 16,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
