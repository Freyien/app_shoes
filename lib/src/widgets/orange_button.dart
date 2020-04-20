import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;

  OrangeButton({
    @required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(this.text, style: TextStyle(color: Colors.white),),
    );
  }
}