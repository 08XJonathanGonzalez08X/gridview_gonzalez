import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo.gretview', //pestaña en web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ), //sistema global
        home: const MyHomePage());
  }
} // widget sin estado

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

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
          title: const Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: const EdgeInsets.all(30),
          shrinkWrap: true,
        ));
  }
}
