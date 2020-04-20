import 'package:app/src/entity/post.dart';
import 'package:app/src/widgets/fake_post_widget.dart';
import 'package:flutter/material.dart';
import 'fake_stories_panel.dart';

class FakeHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // All Page contents
        children: <Widget>[

          // Stories
          FakeStoriesPanel('philippe'),

          // Posts
          FakePost(Post('philippe', location: 'Santiago, RD',)),
          FakePost(Post('bryan', location: 'Santiago, RD', description: 'mis vacaciones fueron super chulo!!!!', hashtags: '#monumental #chevere',)),
          FakePost(Post('duran', location: 'Paris, France', views: 231, comments: 42,)),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.autorenew, color: Colors.grey[400], size: 20,),
          ),

        ],
      ),
    );
  }
}