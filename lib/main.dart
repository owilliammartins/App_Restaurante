//import 'package:app_restaurante/tela_nova.dart';
import 'package:app_restaurante/menu_screen.dart';
import 'package:app_restaurante/tela_restaurante.dart';
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
  var telaAtiva = restauranteTela; //telaNova;

  

  createContentDisplay() {
    return new Container(
      decoration: new BoxDecoration(
        image: telaAtiva.background,
      ),
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () {
              //TODO:
            },
          ),
          title: new Text(
            telaAtiva.title,
            style: new TextStyle(
              fontFamily: 'bebas-neue',
              fontSize: 25.0,
            ),
          ),
        ),
        body: telaAtiva.contentBuilder(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        new MenuScreen(),
//        createContentDisplay()
      ],
    );
  }
}

