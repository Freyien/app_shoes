import 'package:flutter/material.dart';

class ShowDescription extends StatelessWidget {
  final String title;
  final String description;

  ShowDescription({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //separater
          SizedBox(height: 20),

          //title
          Text(this.title, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)),

          //separater
          SizedBox(height: 20),

          //description
          Text(this.description, style: TextStyle(color: Colors.black54, height: 1.6))
        ],
      ),
    );
  }
}