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
        // All Posts
        children: <Widget>[

          // Stories
          Container(
            color: Colors.grey[200],
            height: 30,
          ),

          // Post
          Container(
            color: Colors.white,
            height: 100,
          ),

        ],
      ),
    );
  }
}

