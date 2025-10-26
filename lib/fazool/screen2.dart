import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Screen 2"),
          ),
          ListTile(
            leading: CircleAvatar(radius: 10,
            child: Icon(Icons.access_alarm_sharp,color: Colors.redAccent,),),
            title: Text("Clock"),
            subtitle: Text("Time"),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
