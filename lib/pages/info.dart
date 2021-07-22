import 'package:flutter/material.dart';
import 'package:spectacolr/filters.dart';

List <String> choose = ["normal", "protanomaly", "protanopia",  "deuteranomaly", "deuteranopia", "tritanomaly", "tritanopia"];
int filterNo = 0;

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Text(
                "Change Color Filter",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              DropdownButton(
                value: (filterNo != 0) ? choose[filterNo] : null,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                hint: Text("choose type of colorblindness", style: TextStyle(fontSize: 25)),
                items: choose.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e, style: TextStyle(color: Colors.black),)
                  );
                }).toList(),
                onChanged: (newfil) {
                  filterNo = findnum(newfil);
                  setActive(filterNo);
                  setState(() {});
                },
              ),
            ],
          )
        ]
      ),
      decoration: BoxDecoration(
        color: Colors.indigo,
      ),
    );
  }
}

int findnum(Object? name) {
  int n = (name == "normal") ? 0
  : (name == "protanomaly") ? 1
  : (name == "protanopia") ? 2
  : (name == "deuteranomaly") ? 3
  : (name == "deuteranopia") ? 4
  : (name == "tritanomaly") ? 5
  : (name == "tritanopia") ? 6
  : 7;
  return n;
}

void getData() async {
  filterNo = await getActive();
}