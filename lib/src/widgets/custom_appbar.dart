import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Row(
            children: <Widget>[

              Text(this.title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),

              Spacer(),

              Icon(Icons.search, size: 30)
              
            ],
          ),    
        ),
      ),
    );
  }
}