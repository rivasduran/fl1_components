import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Avatars'),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://www.cinemascomics.com/wp-content/uploads/2020/06/iron-man-gemas-del-infinito-endgame.jpg')
         ),
      ),
    );
  }
}