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
  int current_page = 0;
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
                icon: Icon(Icons.home,
                    color: current_page == 0
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
            //Search
            IconButton(
                //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon:
                    Icon(
                        Icons.search,
                        color: current_page == 1
                            ? Color.fromRGBO(203, 73, 101, 1)
                            : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
            //Video
            IconButton(
                //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.ondemand_video,
                    color: current_page == 2
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
            //Traver card
            IconButton(
                //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.card_travel,
                    color: current_page == 3
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
            //Personal Information
            IconButton(
                //This will trigger a feature
                onPressed: () {},
                //Will show the first icon as home
                //From left to right
                icon:
                    Icon(Icons.person,
                        color: current_page == 4
                            ? Color.fromRGBO(203, 73, 101, 1)
                            : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
