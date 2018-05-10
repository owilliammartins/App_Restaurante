import 'package:flutter/material.dart';
import 'package:app_restaurante/zoom_scaffold.dart';

final telaNova = new Tela (
  title: 'Nova tela',
  background: new DecorationImage(
    image: new AssetImage('assets/other_screen_bk.jpg'),
    fit: BoxFit.cover,
    colorFilter: new ColorFilter.mode(const Color(0xCC000000), BlendMode.multiply),
  ),
  contentBuilder: (BuildContext context){
    return new Center(
      child: new Container(
        height: 300.0,
        child: new Padding (
          padding: const EdgeInsets.all(25.0),
          child: new Card(
            child: new Column(
              children:[
                new Image.asset('assets/other_screen_card_photo.jpg'),
                new Expanded(
                    child: new Center(
                      child: new Text(
                        'Esta é uma nova tela.'
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
);