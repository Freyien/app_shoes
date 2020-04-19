import 'dart:ui';

import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  ShoePreview();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(

        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: <Widget>[
            //Shadow shoe
            _Shoe(),

            //Size shoe
            _SizeShoe()
          ],
        ),

      ),
    );
  }
}

class _Shoe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: <Widget>[

          Positioned(
            child: _ShadhowShoe(),
            bottom: 20,
            right: 0,
          ),

          Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}

class _ShadhowShoe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.4,
      child: Container(
        width: 230,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffE3953B), blurRadius: 40),
          ]
        ),
      ),
    );
  }
}

class _SizeShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeShoeBox(7),
          _SizeShoeBox(7.5),
          _SizeShoeBox(8),
          _SizeShoeBox(8.5),
          _SizeShoeBox(9, isSelected: true),
          _SizeShoeBox(9.5),
        ],
      ),
    );
  }
}

class _SizeShoeBox extends StatelessWidget {
  final double size;
  final bool isSelected;
  
  _SizeShoeBox(
    this.size, { 
    this.isSelected = false 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.isSelected) ? Color(0XffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          if (this.isSelected)
            BoxShadow(
              color: Color(0xffF1A23A),
              blurRadius: 10,
              offset: Offset(0, 5)
            )
        ]
      ),
      child: Text('${size.toString().replaceAll('.0', '')}',
        style: TextStyle( 
          color: (this.isSelected) ? Colors.white : Color(0xffF1A23A),
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
