import 'package:flutter/material.dart';

class FakeHomeAppBar extends StatelessWidget implements PreferredSize{
  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  // TODO: implement child
  Widget get child => AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 0.0, right:5.0,),
            child: Icon(Icons.camera_alt, color: Colors.grey, size: 20,)
        ),

        Padding(
          padding: EdgeInsets.only(left: 0.0, right:5.0,),
          child: Text(
            'Fakestagram',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 12.0,
              color: Colors.black,
              //fontStyle: FontStyle.italic,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 100.0, right:0.0,),
          child: Icon(Icons.send, color: Colors.grey, size: 20,),
        ),
      ],
    ),
    //actions: <Widget>[
    //],
  );

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 36.0);
}
