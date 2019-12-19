import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';

class Chats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatsState();
  }
}

class ChatsState extends State<Chats>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("json_details/Details.json"),
        builder: (context,snapshot){
          var data=json.decode(snapshot.data.toString());

          if(snapshot.hasData==Null){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else {
            return ListView.builder (
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column (
                  children: <Widget>[
                    ListTile (
                      leading: CircleAvatar (
                        radius: 28.0,
                        backgroundImage: AssetImage ( data[index]['url'] ),
                      ),
                      title: Text ( data[index]['name'], style: TextStyle (
                        fontWeight: FontWeight.bold,
                      ), ),
                      subtitle: Text ( data[index]['msg'] ),

                      trailing: Padding (
                        padding: const EdgeInsets.only( bottom: 20.0 ),
                        child: Text ( "Yesterday",
                          style: TextStyle (
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 12.0
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    Padding (
                      padding: const EdgeInsets.only( left: 95.0, right: 15.0 ),
                      child: Divider ( ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
        onPressed: (){},
      ),
    );
  }
}

