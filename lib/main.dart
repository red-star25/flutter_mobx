import 'package:flutter/material.dart';
import 'package:mobx_flutter/di/locator.dart';
import 'package:mobx_flutter/ui/home/home.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
