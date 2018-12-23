import 'package:flutter/material.dart';
import './app_screens/home_screen.dart';

void main() => runApp(DevApp());

class DevApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "DevApp",
    home: Home(),
  );
  }
}