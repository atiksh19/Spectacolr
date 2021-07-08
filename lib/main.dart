import 'dart:ui';
import 'pages/camera.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final int pgnm = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(decoration: BoxDecoration(
              color: Colors.indigo,
            ),),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  "Spectacolr",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(txt: "Gallery", img: "assets/glry.gif"),
                SizedBox(height: 40,),
                Button(txt: "About Us", img: "assets/abt.gif"),
              ],
            ),
          ]
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.decelerate,
          backgroundColor: Colors.indigo,
          buttonBackgroundColor: Colors.purple,
          color: Colors.purple,
          items: <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.camera_alt_rounded, size: 30, color: Colors.white,),
            Icon(Icons.list, size: 30, color: Colors.white,),
          ],
          animationDuration: Duration(milliseconds: 400),
        ),
      ),
      routes: {
        "/camera": (context) => CameraPage(),
      },
    );
  }
}

class Button extends StatefulWidget {
  final String txt;
  final String img;
  Button({ key, required this.txt, required this.img});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(backgroundImage: AssetImage(widget.img), radius: 80),
        Text(widget.txt, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ],
    );
  }
}