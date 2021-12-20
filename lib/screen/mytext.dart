// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({ Key? key }) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  // ignore: non_constant_identifier_names
  String name='';
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
        title: const Text("Hello World"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children:  [
          TextField(
            controller: mycontroller,
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'enter your name',
              border: OutlineInputBorder(),
              errorText: validate?"field cannot be empty":null
            ),
          ),
          TextField(
            controller: mycontroller,
            decoration: InputDecoration(
              labelText: 'lastname',
              hintText: 'enter your lastname',
              border: OutlineInputBorder(),
              errorText: validate?"field cannot be empty":null
            ),
          ),
          SizedBox(height: 30,),
          Text(name,textScaleFactor: 3),
          

        ],
        
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          name=mycontroller.text;
          name.isEmpty?validate=true:validate=false;

        });
      },
      child: const Icon(Icons.add),),
    );
  }
}
//  class Myform extends StatefulWidget {
//   const Myform({ Key? key }) : super(key: key);
//   @override
//   _MyformState createState() => _MyformState();
// }
// class _MyformState extends State<Myform> {
//    String fname = "";
//    String lname = "";
//   TextEditingController mybtn1Controller = TextEditingController();
//   TextEditingController mybtn2Controller = TextEditingController();
//   bool validate=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("FormExample"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Column(
//           children: [
//              TextField(
//               //  obscureText: true,
//               controller: mybtn1Controller,
//               decoration: InputDecoration(
//                   labelText: 'First Name', 
//                   hintText: 'Enter the First Name',
//                   border: const OutlineInputBorder(),
//                   errorText: validate ?"Field Cannot Be Empty":null
//                   ), 
//             ),
//           const  SizedBox( 
//               height: 20,
//             ),
//              TextField(
//               //  obscureText: true, 
//               controller: mybtn2Controller,
//               decoration: InputDecoration( 
//                   labelText: 'Last Name', 
//                   hintText: 'Enter the Last Name',
//                   border: const OutlineInputBorder(),
//                   errorText: validate ?"Field Cannot Be Empty":null
//                   ), 
//             ), 
//             const SizedBox(
//               height: 20,
//             ),
//             Text("Your first name is: "+fname,textScaleFactor: 1,),
//             Text("Your last name is: "+lname,textScaleFactor: 1,),
//           ],
//         ), 
//       ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton( 
//         onPressed: () {
//           setState(() {
//             fname=mybtn1Controller.text;
//             fname.isEmpty?validate=true:validate=false; 
//             lname=mybtn2Controller.text;
//             lname.isEmpty?validate=true:validate=false; 
//           });
//         },
//         child: const Icon(Icons.add),  
//       ), 
//     );
//   }
// }