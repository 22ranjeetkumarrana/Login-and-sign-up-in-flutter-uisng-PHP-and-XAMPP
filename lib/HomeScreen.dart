
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xff000b27),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff000b27),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Home',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.0
          ),
        ),
      ),
      body: Container(
        color: Color(0xff000b27),
        child: Center(
          child: Text(
            'Welcome Ranjeet',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
