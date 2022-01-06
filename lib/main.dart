// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaCard());
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Ninja ID Card'),
          backgroundColor: Colors.grey[850],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  // Profile picture
                  backgroundImage: Image.network('https://picsum.photos/120').image,
                  radius: 60,
                ),
              ),
              Divider(
                height: 80,
                color: Colors.grey[600],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Quang Tran',
                style: TextStyle(
                  color: Colors.lightGreen,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'NINJA LELVEL',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '* * * * *',
                style: TextStyle(
                  color: Colors.lightGreen,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text(
                    'sample-email@test.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ]
          )
        ),
      ),
    );
  }
}