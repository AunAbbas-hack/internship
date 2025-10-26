import 'package:flutter/material.dart';

class WpHome extends StatelessWidget {
  const WpHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp",),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 5,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Icon(Icons.camera_alt_outlined),
              Tab(child: Text("Chats")),
              Tab(child: Text("Status")),
              Tab(child: Text("Calls")),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 5,),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context,)=>[
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New Broadcast")),
            ])
          ],
          backgroundColor: Colors.teal,
        ),
        body: TabBarView(children: [
          Text("camera"),
          ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"),
              ),
              title: Text("Aun Abbas"),
              subtitle: Text("Hi, there i am using whatsapp"),
              trailing: Text("52min ago"),
            );
          }),
          ListView.builder(
              itemCount: 2,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"),
                  ),
                  title: Text("Aun Abbas"),
                  subtitle: Text("52min ago"),
                  // trailing: Text("52min ago"),
                );
              }),
          ListView.builder(
              itemCount: 6,
              itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"),
                  ),
                  title: Text("Aun Abbas"),
                  subtitle: index/2==0?Text("You have missed audio call"):Text("You have missed video call"),
                  trailing: index/2==0?Icon(Icons.call):Icon(Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
