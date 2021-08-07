import 'package:flutter/material.dart';
import 'Views/home_page.dart';

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
        iconTheme: IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
      //Define the body
      body: HomePage(),
      //Adds the bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        //Child will be a row widget
        child: Row(
          children: [
            Spacer(),
            //Home
            IconButton(
                //This will trigger a feature
                onPressed: () {
                  setState(() {
                    current_page = 0;
                  });
                },
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
                onPressed: () {
                  setState(() {
                    current_page = 1;
                  });
                },
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.search,
                    color: current_page == 1
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
            //Video
            IconButton(
                //This will trigger a feature
                onPressed: () {
                  setState(() {
                    current_page = 2;
                  });
                },
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
                onPressed: () {
                  setState(() {
                    current_page = 3;
                  });
                },
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
                onPressed: () {
                  setState(() {
                    current_page = 4;
                  });
                },
                //Will show the first icon as home
                //From left to right
                icon: Icon(Icons.person,
                    color: current_page == 4
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1))),
            Spacer(),
          ],
        ),
      ),
    );
  }

  // Widget bottom_navigation_bar (BuildContext _context) {
  //   Widget build(_context) {
  //     return BottomAppBar();
  //   }
  // }
}
