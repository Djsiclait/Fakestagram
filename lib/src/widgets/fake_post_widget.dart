import 'package:app/src/entity/post.dart';
import 'package:app/src/widgets/fake_custom_floating_button.dart';
import 'package:flutter/material.dart';

class FakePost extends StatefulWidget {
  // fields
  final Post post;

  FakePost(this.post);

  @override
  _FakePostState createState() => _FakePostState();
}

class _FakePostState extends State<FakePost> {
  // Mutable elements
  Color _favoriteColor = Colors.black;
  IconData _favorite = Icons.favorite_border;

  IconData _bookmark = Icons.bookmark_border;

  // Change state functions
  void Like_Unlike_Post(){
    setState(() {
      _favorite == Icons.favorite_border ? _favorite = Icons.favorite : _favorite = Icons.favorite_border;
      _favoriteColor == Colors.black ? _favoriteColor = Colors.red : _favoriteColor = Colors.black;
    });
  }

  void Bookmark_Post(){
    setState(() {
      _bookmark == Icons.bookmark_border ? _bookmark = Icons.bookmark: _bookmark = Icons.bookmark_border;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Header
          Row(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/profile.jpeg'),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.post.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
                    Text(widget.post.location, style: TextStyle(fontSize: 6.0), textAlign: TextAlign.left,),
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
          Container(
            height: 200,
            // source: https://stackoverflow.com/questions/49838021/how-do-i-stack-widgets-overlapping-each-other-in-flutter
            child: Stack(
              children: <Widget>[
                Center(
                  child: Image(
                    height: 200,
                    image: AssetImage('assets/images/tigerKing.jpg'),
                  ),
                ),

                Positioned(
                  bottom: 10,
                  left: 10,
                  child: FakeCustomFloatingButton(Colors.grey[850], Colors.grey),
                ),
              ],
            ),
          ),

          // Footer 1 (Like, Comment, Send, Save)
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(_favorite),
                color: _favoriteColor,
                iconSize: 12.0,
                padding: EdgeInsets.only(top: 5.0, left: 5.0),

                onPressed: Like_Unlike_Post,
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 0.0),
                child: Icon(Icons.chat_bubble_outline, size: 12.0, color: Colors.black,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Icon(Icons.send, size: 12.0, color: Colors.black,),
              ),

              IconButton(
                icon: Icon(_bookmark),
                color: Colors.black,
                padding: EdgeInsets.only(top: 5.0, left: 150.0),
                iconSize: 12.0,

                onPressed: Bookmark_Post,
              ),
            ],
          ),

          // Footer 2 (Views)
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text('${widget.post.views}', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 2.0),
                child: Text('views • Liked by ', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 2.0),
                child: Text('${widget.post.others}', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
              padding: EdgeInsets.only(top: 5.0, left: 2.0),
              child: Text(' others', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),
            ],
          ),

          // Footer 3 (username, description, hashtags/tags)
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text(widget.post.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 5.0),
                child: Text(widget.post.description, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.left,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 2.0),
                child: Text(widget.post.hashtags, style: TextStyle(fontSize: 7.0, color: Colors.blue), textAlign: TextAlign.left,),
              ),
            ],
          ),

          // Footer 4 (view all comments option)
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 5.0),
            child: Text('View all ${widget.post.comments} comments', style: TextStyle(fontSize: 8.0, color: Colors.grey[400]), textAlign: TextAlign.left,),
          ),

        ],
      ),
    );
  }
}
