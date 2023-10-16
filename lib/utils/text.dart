import 'package:flutter/material.dart';

class myText extends StatelessWidget {
String text;
double size = 11 ;
 FontWeight fontWeight= FontWeight.normal ;
  myText({super.key,
  required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size , fontWeight: fontWeight));
  }
}