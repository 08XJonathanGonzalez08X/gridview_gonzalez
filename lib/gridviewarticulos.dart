import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Text("Flutter GridView"),
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
            childCount: 17,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
