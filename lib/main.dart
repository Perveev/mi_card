import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: _body(),
        ),
      ),
    ),
  );
}

Widget _body() {
  return Container(
    color: Colors.teal,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _avatar(),
          Text(
            "Perveev VD",
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
              )
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.white,
            ),
          ),
          _myCard("+380964729983", Icons.phone),
          _myCard("vperveev@gmail.com", Icons.email)
        ],
      ),
    ),
  );
}

Widget _avatar(){
  return CircleAvatar(
    backgroundImage: AssetImage('images/Avatar.jpg'),
    radius: 50,
  );
}

Widget _myCard(String data,IconData icon){
  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.teal
      ),
      title: Text(
        data,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Source San Pro',
          color: Colors.teal,
        )
      ),
    ),
  );
}

