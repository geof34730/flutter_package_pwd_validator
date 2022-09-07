import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/Utilities/SizeConfig.dart';

/// ValidationTextWidget that represent style of each one of them and shows as list of condition that you want to the app user
class ValidationTextWidget extends StatelessWidget {
  final Color color;
  final String text;
  final int? value;

  ValidationTextWidget(
      {required this.color, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {

    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        new Container(
          padding: EdgeInsets.only(left:0.1),
          width: SizeConfig.width! * 0.01,
          height: SizeConfig.width! * 0.01,
          child: new CircleAvatar(
            backgroundColor: color,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5,right:5),
          child: new Text(
            text.replaceFirst("-", value.toString()),
            style:
            new TextStyle(fontSize: SizeConfig.width! * 0.04, color: color),
          ),
        )
      ],
    );


  }
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 5.0,
      width: 5.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}