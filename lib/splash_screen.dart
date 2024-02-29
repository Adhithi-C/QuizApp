import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Questions()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
             backgroundImage:NetworkImage(
                  'https://pics.craiyon.com/2023-10-31/0e15ced3e43b4a7c984c3253133851bb.webp'),
            ),
          ),
          Text(
            'Quiz App',
            style: TextStyle(fontSize: 30, color: Colors.black54),
          )
        ],
      ),
    );
    ;
  }
}
