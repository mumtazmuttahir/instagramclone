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
  List<String> posts = [
    "images/posts/post1.png",
    "images/posts/post2.png",
    "images/posts/post3.png",
    "images/posts/post4.png",
    "images/posts/post5.png",
    "images/posts/post6.png",
    "images/posts/post7.png",
    "images/posts/post8.png",
  ];
  Future<void> onRefresh () async {
    await Future.delayed(Duration(seconds: 1));
  }

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
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Header Post
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
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      //Image Post
                      Image(image: AssetImage(posts[index])),
                      //Footer
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.label_outline)),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Liked By ",
                                  ),
                                  TextSpan(
                                    text: "Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  TextSpan(
                                      text: ", and ",
                                  ),
                                  TextSpan(
                                      text: "others",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Profile Name ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )
                                  ),
                                  TextSpan(
                                    text: "This is an awesome Pic ",
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "View all 12 comments",
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
