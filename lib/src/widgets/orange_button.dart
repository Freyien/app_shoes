import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final Color color;

  OrangeButton({
    @required this.text,
    this.color = Colors.orange
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(this.text, style: TextStyle(color: Colors.white),),
    );
  }
}