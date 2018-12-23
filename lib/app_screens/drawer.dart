import 'package:flutter/material.dart';
import './google_apis.dart';
import './about_screen.dart';
import './event_calendar_screen.dart';
import './idea_share_screen.dart';
import './resources_screen.dart';
import './home_screen.dart';

class drawerCreator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              trailing: Icon(Icons.home),
              title: new Text('Home'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.question_answer),
              title: new Text('About Us'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.book),
              title: new Text('Resources'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Resources()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.lightbulb_outline),
              title: new Text('Idea Share'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => IdeaShare()));
              },
            ),
            ListTile(
              trailing: Icon(Icons.calendar_today),
              title: new Text('Event Calendar'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EventCalendar()));
              },
            ),
          ],
        ),
      );
  }

}