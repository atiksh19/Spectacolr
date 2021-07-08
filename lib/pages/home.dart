import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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