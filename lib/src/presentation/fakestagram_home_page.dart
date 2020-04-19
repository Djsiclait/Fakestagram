import 'package:app/src/entity/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fake_home_appbar.dart';
import '../widgets/fake_post_widget.dart';

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
          FakeStories('philippe'),

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

class FakeStories extends StatelessWidget {

  // fields
  final String username;

  FakeStories(this.username);

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
                        image: AssetImage('assets/carol_baskins.jpeg'),
                      ),
                    ),
                  ),
                Center(child: Text('Carol F-ing Baskins', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

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
                      image: AssetImage('assets/carol_baskins.jpeg'),
                    ),
                  ),
                ),
                Center(child: Text('Carol F-ing Baskins', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

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
                      image: AssetImage('assets/carol_baskins.jpeg'),
                    ),
                  ),
                ),
                Center(child: Text('Carol F-ing Baskins', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

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
                      image: AssetImage('assets/carol_baskins.jpeg'),
                    ),
                  ),
                ),
                Center(child: Text('Carol F-ing Baskins', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

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
                      image: AssetImage('assets/carol_baskins.jpeg'),
                    ),
                  ),
                ),
                Center(child: Text('Carol F-ing Baskins', style: TextStyle(fontSize: 7.0), textAlign: TextAlign.center,)),

              ],
            ),
          ),

        ],
      ),
    );
  }
}



