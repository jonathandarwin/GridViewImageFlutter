import 'package:flutter/material.dart';
import 'package:display_image/main_model.dart';

class DetailLayout extends StatelessWidget{

  final MainModel model;
  final int id;

  DetailLayout(this.model, this.id);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(model.getTitle()),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'image$id',
              child: Image.asset(model.getImage()),
            ),          
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(model.getTitle(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              )
            ),          
            Container(
              padding: EdgeInsets.all(20.0),            
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            )
          ],
        ),
      )
    );
  }
}

