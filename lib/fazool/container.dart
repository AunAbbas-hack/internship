import 'package:flutter/material.dart';
import 'package:internship/fazool/screen2.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [DrawerHeader(child: Text("Clock")),
          UserAccountsDrawerHeader(accountName: Text("Time"), accountEmail: Text("abc@gmail.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Screen 2"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
            },
          )],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 200,
                  color: Colors.grey,
                  child: Text('1'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.greenAccent,
                  child: Text('2345'),
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 100,
            transform: Matrix4.rotationZ(.9),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              border: Border.all(color: Colors.black, width: 10),
            ),
            child: Center(child: Text("Container")),
          ),
          Divider(color: Colors.black),
          SizedBox(height: 100, child: VerticalDivider(color: Colors.black)),
          Divider(color: Colors.black,),
          CircleAvatar(radius: 100, backgroundColor: Colors.black),
          RichText(text: TextSpan(
            text: "",style: Theme.of(context).textTheme.bodyLarge,
            children: [TextSpan(text: "Hello",style: TextStyle(fontWeight: FontWeight.bold)),TextSpan(text: "World")]
          )),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
          }, child: Text("Screen2"))

        ],
      ),
    );
  }
}
