import 'package:flutter/material.dart';

class Calls extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CallsState();
  }
}

class CallsState extends State<Calls>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/hrithik.jpg"),
            ),
            title: Text("Yuvraj",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios,
                size: 15.0,
                  color: Colors.green,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.call,
            color: Colors.green,
            ),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/salman.jpg"),
            ),
            title: Text("salman",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_forward_ios,
                  size: 15.0,
                  color: Colors.red,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.videocam,
              color: Colors.green,
            ),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/gf.jpg"),
            ),
            title: Text("Sameer",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios,
                  size: 15.0,
                  color: Colors.green,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.call,
              color: Colors.green,
            ),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/download.jpg"),
            ),
            title: Text("Ayushman",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_back_ios,
                  size: 15.0,
                  color: Colors.green,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.call,
              color: Colors.green,
            ),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/flowers.jpg"),
            ),
            title: Text("Ayushman",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_forward_ios,
                  size: 15.0,
                  color: Colors.red,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.call,
              color: Colors.green,
            ),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/whatsapp.png"),
            ),
            title: Text("Zukerberg",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.arrow_forward_ios,
                  size: 15.0,
                  color: Colors.red,
                ),
                Text("6 November,12:20"),
              ],
            ),
            trailing: Icon(Icons.videocam,
              color: Colors.green,
            ),
          ),
          Divider(),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.add_call),
        onPressed: (){},
      ),
    );
  }
}