import 'package:flutter/material.dart';

import 'package:app_shoes/src/widgets/custom_widgets.dart';

class ShoeDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          //Image shoe
          ShoePreview(fullScreen: true),

          Expanded(
            child: SingleChildScrollView(
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
                  _ColorButtonsAndMore()

                ],
              ),
            )
          )


        ],
      )
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
                Positioned( left: 75, child: _ColorButton(Color(0xffC6D642)) ),
                Positioned( left: 50, child: _ColorButton(Color(0xffFFAD29)) ),
                Positioned( left: 25, child: _ColorButton(Color(0xff2099F1)) ),
                _ColorButton(Color(0xff364D56)),
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
  final Color color;

  _ColorButton(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle
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
          OrangeButton(text: 'Buy now',)
          
        ],
      ),
    );
  }
}