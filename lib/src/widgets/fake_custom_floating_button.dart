import 'package:flutter/material.dart';

// Source: https://stackoverflow.com/questions/52786652/how-to-set-size-to-floatingactionbutton
class FakeCustomFloatingButton extends StatelessWidget {
  //fields
  final IconData icon;
  final Color buttonColor;
  final Color iconColor;
  final double buttonSize;
  final double iconSize;

  // Constructor
  FakeCustomFloatingButton(this.buttonColor, this.iconColor, {this.icon = Icons.person, this.buttonSize = 15, this.iconSize = 10});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.buttonSize,
      width: this.buttonSize,

      child: RawMaterialButton(
        shape: CircleBorder(),
        elevation: 0.0,
        fillColor: buttonColor,

        child: Icon(
          this.icon,
          size: this.iconSize,
          color: iconColor,
        ),

        onPressed: (){
          // Empty for now
          //SnackBar(content: Text('Click!'),);
          print('Click!');
        },
      ),

    );
  }
}
