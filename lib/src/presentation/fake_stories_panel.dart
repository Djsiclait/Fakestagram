import 'package:app/src/entity/story.dart';
import 'package:app/src/widgets/fake_story_widget.dart';
import 'package:flutter/material.dart';

class FakeStoriesPanel extends StatelessWidget {
  // fields
  final String username;

  // Constructor
  FakeStoriesPanel(this.username);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          // User's Story
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 5.0, bottom: 5.0),
            child: Column(
              children: <Widget>[

                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/profile.jpeg'),
                    ),
                  ),
                ),
                Center(child: Text(this.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

          // Other users' stories
          FakeStory(Story('Carol F-ing Baskins')),
          FakeStory(Story('tigerKing')),
          FakeStory(Story('pewdiepie')),
          FakeStory(Story('turtwig')),
          FakeStory(Story('bubbles')),
          FakeStory(Story('omarcito')),
          FakeStory(Story('funhaus')),

        ],
      ),
    );
  }
}
