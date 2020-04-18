import 'package:flutter/material.dart';
import 'fake_home_appbar.dart';

class FakestagramHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],

      // Appbar / Banner
      appBar: FakeHomeAppBar(),

      // Body or content of the home page
      body: FakeHomeBody(),
    );
  }
}

class FakeHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // All Page contents
        children: <Widget>[

          // Stories
          Container(
            color: Colors.grey[200],
            height: 30,
          ),

          // Post
          Container(
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
                          Text('username', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
                          Text('#, location, or sponcered', style: TextStyle(fontSize: 6.0), textAlign: TextAlign.left,),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 130.0),
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
                      child: Text('123,311', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
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
                      child: Text('username', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 5.0),
                      child: Text('This is a post of my puppy called Popeye', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 2.0),
                      child: Text('#socute', style: TextStyle(fontSize: 7.0, color: Colors.blue), textAlign: TextAlign.left,),
                    ),
                  ],
                ),

                // Footer 4 (view all comments option)
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0, left: 2.0),
                    child: Text('View all 245,244 comments', style: TextStyle(fontSize: 8.0, color: Colors.grey[400]), textAlign: TextAlign.left,),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

