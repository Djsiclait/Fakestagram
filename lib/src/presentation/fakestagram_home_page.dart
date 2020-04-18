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
            height: 200,
            child: Column(
              children: <Widget>[

                // Header
                Row(
                  children: <Widget>[
                    Image(),

                    Column(
                      children: <Widget>[
                        Text('username'),
                        Text('#, location, or sponcered'),
                      ],
                    ),

                    Icon(Icons.more_horiz),
                  ],
                ),

                // Image
                Image(),

                // Footer 1 (Like, Comment, Send, Save)
                Row(),

                // Footer 2 (Views)
                Row(),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

