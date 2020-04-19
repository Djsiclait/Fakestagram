import 'package:app/src/entity/post.dart';
import 'package:flutter/material.dart';
import 'fake_home_appbar.dart';
import 'fake_post_widget.dart';

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
      child: ListView(
        // All Page contents
        children: <Widget>[

          // Stories
          Container(
            color: Colors.grey[200],
            height: 30,
          ),

          // Posts
          FakePost(Post('philippe', location: 'Santiago, RD',)),
          FakePost(Post('bryan', location: 'Santiago, RD', description: 'mis vacaciones fueron super chulo!!!!', hashtags: '#monumental #chevere',)),
          FakePost(Post('duran', location: 'Paris, Francia', views: 231, comments: 42,)),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.autorenew, color: Colors.grey[400], size: 20,),
          ),

        ],
      ),
    );
  }
}


