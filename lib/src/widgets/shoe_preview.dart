import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import 'package:app_shoes/src/models/ShoeModel.dart';
import 'package:app_shoes/src/pages/show_detail_page.dart';

class ShoePreview extends StatelessWidget {
  final bool fullScreen;
  ShoePreview({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {
    final _padding = (this.fullScreen) ? EdgeInsets.symmetric(vertical: 0) : EdgeInsets.symmetric(vertical: 5);
    final _height = (this.fullScreen) ? 295.0 : 430.0;
    var   _borderRadius;

    if (this.fullScreen)
      _borderRadius = BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40));
    else
      _borderRadius = BorderRadius.circular(50);

    return GestureDetector(
      onTap: () {
        if (!fullScreen)
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShoeDetail()));
      },
      child: Padding(
        padding: _padding,
        child: Container(
          width: double.infinity,
          height: _height,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: _borderRadius
          ),
          child: Column(
            children: <Widget>[

              //Shadow shoe
              _Shoe(),

              //Size shoe
              if (!fullScreen)
                _SizeShoe()

            ],
          ),

        ),
      ),
    );
  }
}

class _Shoe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    return Padding(
      padding: EdgeInsets.only(top: 30, right: 50, bottom: 10, left: 50),
      child: Stack(
        children: <Widget>[

          Positioned(
            child: _ShadhowShoe(),
            bottom: 20,
            right: 0,
          ),

          Image(image: AssetImage(shoeModel.assetImage), height: 250,)
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
        width: 200,
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
          _SizeShoeBox(9),

        ],
      ),
    );
  }
}

class _SizeShoeBox extends StatelessWidget {
  final double size;
  
  _SizeShoeBox(
    this.size
  );

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    final isSelected = shoeModel.size == size;

    return GestureDetector(
      onTap: () {
        shoeModel.size = this.size;
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 40),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: (isSelected) ? Color(0XffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: Color(0xffF1A23A),
                blurRadius: 10,
                offset: Offset(0, 5)
              )
          ]
        ),
        child: Text('${size.toString().replaceAll('.0', '')}',
          style: TextStyle( 
            color: (isSelected) ? Colors.white : Color(0xffF1A23A),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
