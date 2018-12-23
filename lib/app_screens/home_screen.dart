import 'package:flutter/material.dart';
import './google_apis.dart';
import './drawer.dart';
import './about_screen.dart';
import './event_calendar_screen.dart';
import './idea_share_screen.dart';
import './resources_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DevApp'),),
      drawer: new drawerCreator(),
      body: homeContent(),
    );
  }
}

class homeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[            
            Expanded(child:addLogo()),            
            Expanded(child: Text(
              "Upcoming Events",
              style:TextStyle(
                decoration:TextDecoration.none,                
                color: Colors.blue,
                fontSize: 35.0,
              ),
              textDirection: TextDirection.ltr
            )),
            Expanded(child: calendarAPI()),            
            Expanded(child: becomeMemberButton(),),
            Expanded(child: Row(children: <Widget>[
              Expanded(child:aboutButton()),
              Expanded(child:resourcesButton()),
            ],)), 
            Expanded(child: Row(children: <Widget>[
              Expanded(child:ideaShareButton()),
              Expanded(child:eventCalendarButton()),
            ],)),
          ],
        )
      ),
    );;
  }
}

class addLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage devAppLogo = new AssetImage('assets/logo.png');
    Image logo = Image(image: devAppLogo);
    return Container(child: logo,);
  }
}

class aboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
        },
        color: Colors.blue,
        child: Text('About Us'),
        elevation: 6.0,
      ),
    );
  }
} 
class becomeMemberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width*0.96,
      child: RaisedButton(
        onPressed: (){},
        color: Colors.blue,
        child: Text('Become a member'),
        elevation: 6.0,
      ),
    );
  }
}

class resourcesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Resources()));
        },
        color: Colors.blue,
        child: Text('Resources'),
        elevation: 6.0,
      ),
    );
  }
}

class ideaShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => IdeaShare()));
        },
        color: Colors.blue,
        child: Text('Idea Share'),
        elevation: 6.0,
      ),
    );
  }
}

class eventCalendarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => EventCalendar()));
        },
        color: Colors.blue,
        child: Text('Event Calandar'),
        elevation: 6.0,
      ),
    );
  }
}
    