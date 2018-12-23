import 'package:flutter/material.dart';
import 'package:googleapis/storage/v1.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:googleapis/calendar/v3.dart';
import 'dart:convert';

final accountCredentials = new ServiceAccountCredentials.fromJson({
  "type": "service_account",
  "private_key_id": "eae6ed9632b88897c80b4312e2f7d21cd596aefe",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC5ojBPkZrKU3JS\nRARmkutZidMbAhAzPCZQnHOrx5+RxR2cTp2REMA3T63rcgFZ/VoZEbDN3iWP8ZUc\niWm28RmhLgdPjkh+6+Mc3hWbPOJmEzDfoOGYtjaS3+n1Fmn5eKwg4twUlVShDCfB\npJgGkgEA4/EIC1ZVD1Dgu2+LqbFYrE4cBDh9m6VpbWtEVqyB67E3lXIGtWeArWY9\nzvgYsJ6RAFI5QGbY/TU2Oy29Oz2o2C7L5B/Eabv0IcxuRdr94L6EExuwRvWCFGv4\nUFW88/kmvbC/MeSkBVZ0KMbe0f/u6OLF2rSaaD5l/MGc0+YpTAR85s/NZ2HUzD/w\n9HwSvuFVAgMBAAECggEAGdtCAGtHFMR/yX6o4EK5nmyop3vnlsNbkOHh6Lzy+IJs\nx+9ZWjHrnCiwkHl+P7Me4BwLNPmq4LxlKSbovy8hA0behNHMPkWMCmLSvp9B57bn\nmVaW5ccHnfirZVR8aV/KFgCTaBiOw6nmRb4v4MZodl/JnHW7zjhGay8gb+MwjSmh\n8OzvVnc+KKFY7URKdGZ3kgfXedtAxEiSlfmJw2G6Mb9Q6stLWnp/dt8SGQOmGYtt\n5nNKuQwAuj286B4aQRhaZT7C17UiIzI4qRsVj5TEYUOD2ffsWUc1H089AJoyy4nv\nT5H+mja7+8POjTSTCkGAjIdcH6Z2hJTcIJ1A8C0OwQKBgQDvB8JH58J48eCbtrxT\n6VoxiB8AQ0+IcNARExsZLuo55DbU3te5P0UxeLfsHLh45gNmTR9R5dCdIzvmgmVj\nGde2mdzOJFUzvYDsN5SJB0pc6s11UOOPVAjj381ayDwbCsBy6XsgTMVwDyzCMZ9E\n60gXheLMFPaiFtCQ8vCK93h29QKBgQDGz/lMYFLzkbcHijQXX8ue8MeaiKOmHhZg\nv2cUWnTIcTw6K6rmZWD3r10PrZ1PH/qIMY7ieO6iCo67rVafFz2dHtUV9tlSJLN5\nJ0F3hW5+mtB4E5qXEe/mkbX7UEfO8KxVEIps/mNZ0O+mi//i2yUX2342T8cT7df9\n3eiG/WiE4QKBgQC0tA/rHkmF943PCkm7whkegwK0xy40Ptz9W41L74zBcUcGjOVX\nNX7Q1Ktuw5OuSm1dhIZd+rhIY1+gdwnA7sOGVzF3Yj5LXEM/0RDouus77YKf4yP1\nshj6dLIhpGjUJL+y39HmbEOC4OX8dVkr2BdrORtpH5wIk+je+9pfpJCclQKBgQCV\nk8VRdCsUu63Dy3PzngwZcbgLCQBuq7ZUZczM4F16rM8OSOpUWzPARbyzXgC7liis\nrPR+aVPIsD7A7uH74cVmX9sbolPQ3HH3FdTIcqg2Mo3juYQWYtVmWHxdLwJHrIVL\nnp028ZGX8n1LhYsoh435zBbCD/WMheZ6Rql6Xk9zoQKBgQDWXtco/PftyLFsc1uo\nwUSo5ErIGHD2uNodmLXS79Jf/gmV2COAYJ064kDpNXIO8EeXXkm23MZa/8SAdP9M\nuiuzM7j1hSe2TPARoA/wzuERGK1WNHS8tjlLo9LGOUKdxnwq3KY7QNjdVdY4MdVG\nAr8ro+9XHhK0/ROewNQ/AIMzRA==\n-----END PRIVATE KEY-----\n",
  "client_email": "devapp@devapp-226220.iam.gserviceaccount.com",
  "client_id": "106316875648446833203"
});

var _scopes = [CalendarApi.CalendarScope]; //defines the scopes for the calendar api
var calEvents = null;
void getCalendarEvents() { 
    clientViaServiceAccount(accountCredentials, _scopes).then((client) {
      var calendar = new CalendarApi(client);
      calEvents = calendar.events.list("devappunc@gmail.com");
      calEvents.then((Events events) {
        events.items.forEach((Event event) {print(event.summary);});
      });return calendar;//
    });
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('DevApp'),),
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
//                color: Colors.blue,
                fontSize: 35.0,
              ),
              textDirection: TextDirection.ltr
            )),
            Expanded(child: Text(
              calEvents.toString(),
              //getCalendarEvents().toString(),
              style:TextStyle(
                decoration:TextDecoration.none,
                fontSize: 25.0,
              ),
              textDirection: TextDirection.ltr
            )),            
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
        onPressed: (){},
//        color: Colors.blue,
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
//        color: Colors.blue,
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
        onPressed: (){},
//        color: Colors.blue,
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
        onPressed: (){},
//        color: Colors.blue,
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
        onPressed: (){},
//        color: Colors.blue,
        child: Text('Event Calandar'),
        elevation: 6.0,
      ),
    );
  }
}
    