import 'package:flutter/material.dart';
import './home_screen.dart';
import './drawer.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "DevApp: About Us",
    home: aboutUsHome(),
  );
  }
}

class aboutUsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DevApp: About Us'),),
      drawer: new drawerCreator(),
      body: Container(
        child: aboutUsContent(),
      )
    );
  }
}

class aboutUsContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return aboutPageListView();
  }
}

Widget aboutPageListView() {
  var listView = Container (
      alignment: Alignment.center,
      child:ListView(      
      children: <Widget>[
        Text(
          'Our Mission',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.blue,
            fontSize: 35.0,
          ),
        ),
        Text(
          'This is the club for those who want to interdisciplinarily connect and collaborate with other UNC students on app ideas and development. \n Currently looking for computer science majors and interested coders who are looking to gain experience in application and web development. \n We will be having professional speakers and workshops to help teach these trades.',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        surya(),//
        Text(
          'Surya Poddutoori',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.blue,
            fontSize: 35.0,
          ),
        ),
        Text(
          'President \n Major: Statistics and Computer Science \n sunisc@live.unc.edu',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        jonah(),//
        Text(
          'Jonah Soberano',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.blue,
            fontSize: 35.0,
          ),
        ),
        Text(
          'Vice President \n Major: Statistics and Computer Science \n soberano@live.unc.edu',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        rahul(),//
        Text(
          'Rahul narvekar',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.blue,
            fontSize: 35.0,
          ),
        ),
        Text(
          'Project Manager \n Major: Economics and Computer Science \n rnarveka@live.unc.edu',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
        varun(),//
        Text(
          'Varun Tanna',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.blue,
            fontSize: 35.0,
          ),
        ),
        Text(
          'Treasurer \n Major: Biology and Computer Science \n vtanna@live.unc.edu',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration:TextDecoration.none,                
            color: Colors.black,
            fontSize: 15.0,
          ),
        ),
      ],
    )
  );
  return listView;
}
class surya extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage devAppLogo = new AssetImage('assets/surya.jpg');
    Image logo = Image(image: devAppLogo);
    return Container(child: logo,);
  }
}
class jonah extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage devAppLogo = new AssetImage('assets/jonah.jpg');
    Image logo = Image(image: devAppLogo);
    return Container(child: logo,);
  }
}

class rahul extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage devAppLogo = new AssetImage('assets/rahul.jpg');
    Image logo = Image(image: devAppLogo);
    return Container(child: logo,);
  }
}

class varun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage devAppLogo = new AssetImage('assets/varun.png');
    Image logo = Image(image: devAppLogo);
    return Container(child: logo,);
  }
}