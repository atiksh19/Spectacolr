import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.purple,
            centerTitle: true,
            title: Container(
              child: Image.asset(
                "assets/logoText.png",
                height: 60,
                width: 200,
              ),
            )
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(decoration: BoxDecoration(color: Colors.indigoAccent), child: Text("Hello!!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Spectacolr is designed to help colorblind people in distinguishing and maybe recognizing colors they usually don't. Our main priority is convenience, which us why we made the app as lightweight and east-to-use as possible.",
                      style: TextStyle(fontSize: 25,),
                    ),
                    SizedBox(height: 40,),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(decoration: BoxDecoration(color: Colors.indigoAccent), child: Text("About Us", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "We are a team of 2 highschoolers from India, Atiksh Mittal and Arav Dhoot\n Atiksh Mittal: App Developer\n Arav Dhoot: Web developer",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 40,),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(decoration: BoxDecoration(color: Colors.indigoAccent), child: Text("Contact us", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "If you have any inquiries, suggestions, or complaints, please contact us at:\natiksh1909@gmail.com\naravdhoot@gmail.com",
                      style: TextStyle(fontSize: 25,),
                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}