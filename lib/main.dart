import 'package:flutter/material.dart';

import 'package:app_shoes/src/pages/shoe_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Shoes',
      debugShowCheckedModeBanner: false,
      home: ShoePage()
    );
  }
}