import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int count = 0;

  var imageurl = "https://source.unsplash.com/random/";

  getImage() {
    return Image.network(
      imageurl,
    );
  }

  imageGet() {
    imageurl = "https://source.unsplash.com/random/$count";
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: getImage(),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              imageGet()==null? CircularProgressIndicator(): imageGet();
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pink,
              ),
              child: Center(child: Text("Change Image")),
            ),
          )
        ],
      )),
    ));
  }
}