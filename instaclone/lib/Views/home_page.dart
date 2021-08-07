import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profile_pictures = [
    "images/people/1.png",
    "images/people/2.png",
    "images/people/3.png",
    "images/people/4.png",
    "images/people/5.png",
    "images/people/6.png",
    "images/people/7.png",
    "images/people/8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/Instagram_logo.png",
          height: 50,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("images/red.png"),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                AssetImage(profile_pictures[index]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Profile Name",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Rest
            Divider(),
            Column(
              children: List.generate(
                8,
                (index) => Column(
                  children: [
                    //Child 1
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage("images/red.png"),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage(profile_pictures[index]),
                            ),
                          ),
                        ),
                        Text("Profile Name"),
                        Spacer(),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.more_vert)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
