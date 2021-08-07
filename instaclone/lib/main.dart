import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InstaHomePage(),
    );
  }
}

class InstaHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InstaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Adds the bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        //Child will be a row widget
        child: Row(
          children: [
            Spacer(),
            //Home
            IconButton(
                //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.home)),
            Spacer(),
            //Search
            IconButton(
              //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.search)),
            Spacer(),
            //Video
            IconButton(
              //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.ondemand_video)),
            Spacer(),
            //Traver card
            IconButton(
              //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.card_travel)),
            Spacer(),
            //Personal Information
            IconButton(
              //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.person)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
