import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakkefun_feed/app_module.dart';
import 'package:wakkefun_feed/app_widget.dart';

void main() {
  return runApp(ModularApp(
    module: AppModule(), 
    child: AppWidget()));
}
