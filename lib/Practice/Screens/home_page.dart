import 'package:flutter/material.dart';
import 'package:internship/Practice/components/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        backgroundColor: Colors.white70,
        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: pinkColor),
              child: Text("Stylish"),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),

            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Image.asset("assets/images/splashLogo.png",height: 40,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
          )
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
