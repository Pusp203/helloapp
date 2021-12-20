import 'dart:async';

import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({ Key? key }) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  // ignore: non_constant_identifier_names
  String firstnumner='';
  String lastnumber='';
  //step 1
  TextEditingController mycontroller=TextEditingController();
  bool validate=false;
  @override
  void dispose(){
    mycontroller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        body:Form(child: Column(children: [
          const Text('Addding two numbers'),
          const SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Second num',
              hintText: '0',
              border: OutlineInputBorder(),
              
            ),
          )

        ],),)
        title: const Text("Hello World"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children:  [
          TextField(
            controller: mycontroller,
            decoration: InputDecoration(
              labelText: 'Number',
              hintText: 'enter firstnumner',
              border: OutlineInputBorder(),
              errorText: validate?"field cannot be empty":null
            ),
          ),
          TextField(
            controller: mycontroller,
            decoration: InputDecoration(
              labelText: 'Number',
              hintText: 'enter lastnumber',
              border: OutlineInputBorder(),
              errorText: validate?"field cannot be empty":null
            ),
          ),
          SizedBox(height: 30,),
          Text(firstnumner,textScaleFactor: 3),
          

        ],
        
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          firstnumner=mycontroller.text;
          firstnumner.isEmpty?validate=true:validate=false;

        });
        floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          lastnumber=mycontroller.text;
          lastnumber.isEmpty?validate=true:validate=false;

        });
       
    
      },);
      },)
      );

  
  
  }
}