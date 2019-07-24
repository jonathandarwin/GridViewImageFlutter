import 'package:flutter/material.dart';
import 'package:display_image/home/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Image",
      home : HomeLayout()
    );
  }
}