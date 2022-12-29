import 'package:flutter/material.dart';
import 'package:pics_api/controller/api.dart';
import 'package:pics_api/controller/api.dart';
import 'package:pics_api/screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(height: 400,width: 300,color: Colors.black,
        child: newpic()==null? CircularProgressIndicator(color: Colors.white,):newpic()
        ),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
         clickImage();
          setState(() {
            
          });
        },
        child: Container(height: 30, width: 110,
        decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text("chnage image", style: TextStyle(color: Colors.white),)),
        ),
        )
        ],),
      )
    );
  }
}