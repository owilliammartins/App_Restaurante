//import 'package:app_restaurante/tela_nova.dart';
//import 'package:app_restaurante/menu_screen.dart';
import 'package:app_restaurante/menu_screen.dart';
import 'package:app_restaurante/tela_restaurante.dart';
import 'package:app_restaurante/zoom_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Menu restaurante',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var telaAtiva = restauranteTela; //telaNova

  @override
  Widget build(BuildContext context) {
    return new ZoomScaffold(
      menuScreen: new MenuScreen(),
      contentScreen: telaAtiva,
    );
  }
}