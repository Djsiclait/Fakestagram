import 'package:app/src/entity/story.dart';
import 'package:flutter/material.dart';

class FakeStory extends StatelessWidget {
  // Field
  final Story story;

  FakeStory(this.story);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                image: AssetImage('assets/carol_baskins.jpeg'),
              ),
            ),
          ),
          Center(child: Text(this.story.username, style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

        ],
      ),
    );
  }
}