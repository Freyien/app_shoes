import 'package:flutter/material.dart';

import 'package:app_shoes/src/widgets/custom_widgets.dart';

class AddShoppingCartButton extends StatelessWidget {
  final double amount;

  AddShoppingCartButton({ this.amount });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: <Widget>[

            //amount
            Text('\$$amount', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),

            Spacer(),

            //Button            
            OrangeButton(text: 'Add to cart')

          ],
        ),
      ),
    );
  }
}