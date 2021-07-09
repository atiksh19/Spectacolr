import 'package:spectacolr/pages/info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pgnm = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          onHorizontalDragUpdate: (details) {
            int sensitivity = 16;
            if (details.delta.dx > sensitivity && pgnm != 0) {
              //left swipe
              setState((){pgnm -= 1;});
            }
            else if(details.delta.dx < -sensitivity && pgnm != 2){
              //right swipe
              setState((){pgnm += 1;});
            }
          },
          child: 
            pgnm == 0
            ? HomePage()
            : pgnm == 1
            ? CameraPage() 
            : InfoPage(),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: pgnm,
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
          onTap: (index) {
            setState(() {
              pgnm = index;
            });
          },
        ),
      ),
      
    );
  }
}