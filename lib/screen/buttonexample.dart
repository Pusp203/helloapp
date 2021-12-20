import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({ Key? key }) : super(key: key);

  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Example')),
      body:Center(
       child:Column(
        children: [
          const  SizedBox(height: 20),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              side: BorderSide(color: Colors.blue,width: 5),
              padding: EdgeInsets.all(20),
              minimumSize: Size(150, 50),
              primary: Colors.white,
              backgroundColor: Colors.red,
              elevation: 20,
              shadowColor: Colors.yellow,
              textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,

              ),
            ),
 
        onPressed: (){
          print('you have clicked a text  button');
        },
        onLongPress: (){print('we have presses long in button');
        },
        
         child: const Text('Text')),
      const SizedBox(height: 30),
      ElevatedButton(onPressed: (){}, child: const Text('Elevated')),
      const SizedBox(height: 30),
      OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
      const SizedBox(height: 20),
      ElevatedButton(onPressed: (){}, child: const Icon(Icons.wifi),),
      const SizedBox(height: 20),
      OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.people), label: const Text('Click'),),
      

      ],),

      
    ));
  }
}

