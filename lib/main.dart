import 'package:flutter/material.dart';
import 'package:helloapp/screen/CWaddingTwonumbers.dart';
import 'package:helloapp/screen/mytext.dart';

// import 'screen/buttonexample.dart';

//ekai choti valur read garne,ekaii choti reset garna form ko use hunxa

void main() {
  runApp(const MyApp());
}
//form ko key lai jahile pani define garnu parxa in statefulwidget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Example',
      home:Home(),
      // home: MyButtons(),
    );
  }
}
      