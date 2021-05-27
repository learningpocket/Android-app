import 'package:chat_app_tutorial/helper/authenticate.dart';
import 'package:chat_app_tutorial/services/auth.dart';
import 'package:chat_app_tutorial/views/search.dart';
import 'package:chat_app_tutorial/widget/widget.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthService authService = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Image.asset("assets/images/logo.png", height: 50,),
      actions: [
        GestureDetector(
          onTap: (){
            AuthService().signOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Authenticate()));

          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.exit_to_app),
          ),
        )
      ],
    ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Search()));
        },
      ),

    );
  }
}
