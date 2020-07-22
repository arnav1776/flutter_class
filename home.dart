import 'package:flutter/material.dart';

MyApp() {
  var mytext = Text(
    'Flutter test app',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  mypress() {
    print("Something clicked....");
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.grey.shade900,
  );

  var mycalandericon = Icon(Icons.alarm);

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: null);

  var mycalbutton = IconButton(icon: mycalandericon, onPressed: mypress);

  var myappbar = AppBar(
    title: mytext,
    backgroundColor: Colors.amber,
    leading: MyEmailIcon,
    actions: <Widget>[MyEmailButton, mycalbutton],
  );

  var myimage = Image.network(
    'https://raw.githubusercontent.com/arnav1776/flutter_class/master/flash-logo-1280x720.jpg',
    width: double.infinity,
    height: double.infinity,
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: myimage,
    backgroundColor: Colors.amber.shade100,
  );
  var design = MaterialApp(
    home: myhome,
  );
  return design;
}

class Appbar {}
