import 'package:flutter/material.dart';

class Status extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StatusState();
  }
}

class StatusState extends State<Status>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: GestureDetector(
              onTap: (){},
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius:28.0,
                      backgroundImage: AssetImage("images/salman.jpg"),
                    ),
                    Positioned(
                      top: 34.0,
                      left: 34.0,
                      height: 22.0,
                      width: 22.0,
                      child: FloatingActionButton(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.add),
                      )
                    ),
                  ],
                ),

                title: Text("My status", style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),

          Container(
            height: 28.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 5.0),
              child: Text("Recent updates",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                    color: Colors.black38
                ),),
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/hrithik.jpg"),
            ),
            title: Text("Hrithik",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("12:20"),
          ),
          Divider(),

          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/download.jpg"),
            ),
            title: Text("Shahid",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("Yesterday,1:40"),
          ),
          Divider(),


          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/akshay.jpg"),
            ),
            title: Text("Akshay kumar",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("Yesterday,12:02"),
          ),
          Divider(),


          ListTile(
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("images/flowers.jpg"),
            ),
            title: Text("Sidharth",style: TextStyle(
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("Yesterday,10:55"),
          ),
          Divider(),


        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt),
        onPressed: (){},
      )
      
    );
  }
}