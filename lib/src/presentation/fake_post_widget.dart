import 'package:flutter/material.dart';


class FakePost extends StatelessWidget {
  // fields
  final String username;
  final String location;
  final String description;
  final String hashtags;
  final int views;
  final int comments;

  FakePost({this.username, this.location = '', this.description= '', this.hashtags = '', this.views = 0, this.comments = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Header
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    height: 30.0,
                    width: 30.0,
                    image: AssetImage('assets/profile.jpeg'),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(this.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
                    Text(this.location, style: TextStyle(fontSize: 6.0), textAlign: TextAlign.left,),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 160.0),
                child: Icon(Icons.more_vert, size: 12.0,),
              ),
            ],
          ),

          // Image
          Image(
            //color: Colors.amber,
            height: 200,
            //width: ,
            image: AssetImage('assets/post1.jpeg'),
          ),

          // Footer 1 (Like, Comment, Send, Save)
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Icon(Icons.favorite_border, size: 12.0, color: Colors.black,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Icon(Icons.chat_bubble_outline, size: 12.0, color: Colors.black,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Icon(Icons.send, size: 12.0, color: Colors.black,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 180.0),
                child: Icon(Icons.bookmark_border, size: 12.0, color: Colors.black,),
              ),
            ],
          ),

          // Footer 2 (Views)
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text('${this.views}', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 2.0),
                child: Text('views', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),
            ],
          ),

          // Footer 3 (username, description, hashtags/tags)
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text(this.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text(this.description, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 2.0),
                child: Text(this.hashtags, style: TextStyle(fontSize: 7.0, color: Colors.blue), textAlign: TextAlign.left,),
              ),
            ],
          ),

          // Footer 4 (view all comments option)
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 5.0),
            child: Text('View all ${this.comments} comments', style: TextStyle(fontSize: 8.0, color: Colors.grey[400]), textAlign: TextAlign.left,),
          ),

        ],
      ),
    );
  }
}
