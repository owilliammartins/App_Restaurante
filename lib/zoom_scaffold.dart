import 'package:flutter/material.dart';

// Classe para criar nova tela no app
class Tela {
  final String title;
  final DecorationImage background;
  final WidgetBuilder contentBuilder;

  // Constructor
  Tela({
    this.title,
    this.background,
    this.contentBuilder,
  });
}
