import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Calls.dart';
import 'package:whatsapp_clone/Chats.dart';
import 'package:whatsapp_clone/Status.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return HomeState();
  }
}

class HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Material (
        child: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: Scaffold (

              appBar: AppBar (
                elevation: 6.0,
                backgroundColor: Colors.green,
                title:Text("WhatsApp",style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                  fontSize: 22.0
                ),),

                actions: <Widget>[
                  IconButton(
                      icon:Icon(Icons.search,color: Colors.white,) ,
                      onPressed: (){}
                  ),

                  IconButton(
                      icon:Icon(Icons.more_vert,color: Colors.white,) ,
                      onPressed: (){}
                  ),

                ],
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Icon(Icons.camera_alt),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0,top:6.0),
                      child: Text("CHATS",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0,top:6.0),
                      child: Text("STATUS",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9.0,top:6.0),
                      child: Text("CALLS",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Center(
                    child: Icon(Icons.camera,
                    size: 65.0,
                    ),
                  ),
                  Chats(),
                  Status(),
                  Calls(),
                ],
              )
          )
        ),
    );
  }
}