import 'package:flutter/material.dart';
import 'package:untitled1/login_page.dart';
import 'package:untitled1/splash_page.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);
  final String username;

  const HomePage({super.key, required this.username});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Center(
            child: Text(
              'Welcome ${widget.username}',
              style: TextStyle(fontSize: 20),
            ),
          )),
          /////////////////////// logout button///////////////////

          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder:(context) => SplashScreen() ));
                //Navigator.push(context , MaterialPageRoute(builder: (context) => SplashScreen() ));
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Login_Page()),
                );
              },
              child: Text('Log Out'),
            ),
          )
        ],
      )),
    );
  }
}
