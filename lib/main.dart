import 'package:app_shoes/src/models/ShoeModel.dart';
import 'package:flutter/material.dart';

import 'package:app_shoes/src/pages/shoe_page.dart';
import 'package:provider/provider.dart';
 
void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => new ShoeModel() )
      ],
      child: MyApp()
    )
  );
} 
 
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