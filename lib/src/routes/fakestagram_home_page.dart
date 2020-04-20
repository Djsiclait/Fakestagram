import 'package:app/src/presentation/fake_home_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../presentation/fake_home_appbar.dart';

class FakestagramHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],

      // Appbar / Banner
      appBar: FakeHomeAppBar(),

      // Body or content of the home page
      body: FakeHomeContent(),
    );
  }
}








