import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

import 'package:app_shoes/src/widgets/custom_widgets.dart';
import 'package:app_shoes/src/models/ShoeModel.dart';

class ShoeDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Stack(
            children: <Widget>[
              //Shoe preview
              Hero(
                tag: 'shoe-1',
                child: Material(
                  child: ShoePreview(fullScreen: true,),
                )
              ),

              //Back page
              Positioned(
                top: 50 ,
                child: FloatingActionButton(
                  child: Icon(Icons.chevron_left, size: 40),
                  backgroundColor: Colors.transparent,
                  highlightElevation: 0,
                  elevation: 0,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              )
            ]
          ),

          //Image shoe
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[

                  //Shoe description
                  ShowDescription(
                    title: 'Nike Air Max 720',
                    description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so. ",
                  ),

                  //Buy button
                  _AmountBuyNow(),

                  //Colors
                  _ColorButtonsAndMore(),

                  _ReactionButtons()

                ],
              ),
            )
          )


        ],
      )
    );
  }
}

class _ReactionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _ReactionButton( Icon(Icons.star, color: Colors.orange) ),
          _ReactionButton( Icon(Icons.add_shopping_cart, color: Colors.grey.withOpacity(.4)) ),
          _ReactionButton( Icon(Icons.settings, color: Colors.grey.withOpacity(.4)) )
        ],
      ),
    );
  }
}

class _ReactionButton extends StatelessWidget {
  final Icon icon;

  const _ReactionButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(.20), spreadRadius: -5, blurRadius: 20, offset: Offset(0, 10))
        ]
      ),
      child: this.icon,
    );
  }
}

class _ColorButtonsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        children: <Widget>[

          //Color buttons
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned( left: 90, child: _ColorButton(Color(0xffC6D642), 4, 'assets/imgs/verde.png') ),
                Positioned( left: 60, child: _ColorButton(Color(0xffFFAD29), 3, 'assets/imgs/amarillo.png') ),
                Positioned( left: 30, child: _ColorButton(Color(0xff2099F1), 2, 'assets/imgs/azul.png') ),
                _ColorButton(Color(0xff364D56), 1, 'assets/imgs/negro.png'),
              ],
            )
          ),


          //More items
          OrangeButton(text: 'More related items', color: Color(0xffFFC675))

        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final String path;
  final Color color;
  final int index;

  _ColorButton(this.color, this.index, this.path);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);
    
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 200),
      duration: Duration(milliseconds: 500),
      child: GestureDetector(
        onTap: () {
          shoeModel.assetImage = this.path;
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: this.color,
            shape: BoxShape.circle
          ),
        ),
      ),
    );
  }
}

class _AmountBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Row(
        children: <Widget>[

          //Price
          Text('\$180.0',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          Spacer(),

          //Buy now
          FadeInRight(
            from: 100,
            duration: Duration(milliseconds: 500),
            delay: Duration(milliseconds: 600),
            child: OrangeButton(text: 'Buy now')
          )
          
        ],
      ),
    );
  }
}