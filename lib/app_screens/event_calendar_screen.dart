import 'package:flutter/material.dart';
import './home_screen.dart';
import './drawer.dart';

class EventCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "DevApp: Event Calendar",
    home: EventCalendarHome(),
  );
  }
}

class EventCalendarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DevApp: Event Calendar'),),
      drawer: new drawerCreator(),
      body: Container(
        child: Text(
          'TBD'
        ),
      )
    );
  }
}