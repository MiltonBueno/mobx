import 'package:flutter/material.dart';
import 'package:mobx_aula/Home.dart';
import 'package:mobx_aula/controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    // create: (_) => Controller(),
    providers: [
      Provider<Controller>(
        create: (_) => Controller(),
      ),
    ],
    child: MaterialApp(
      home: Home(),
    ),
  ));
}
