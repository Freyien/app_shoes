import 'package:flutter/material.dart';

class ShoePreview extends StatelessWidget {
  ShoePreview();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(

        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: <Widget>[
            //Shadow shoe
            _Shoe()

            //Tallas
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