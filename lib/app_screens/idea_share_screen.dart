import 'package:flutter/material.dart';
import './home_screen.dart';
import './drawer.dart';

class IdeaShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "DevApp: Idea Share",
    home: ideaShareHome(),
  );
  }
}

class ideaShareHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DevApp: Idea Share'),),
      drawer: new drawerCreator(),
      body: Container(
        child: Text(
          'TBD'
        ),
      )
    );
  }
}