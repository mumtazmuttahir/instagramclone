import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Instagram_logo.png",
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
    );
  }
}
