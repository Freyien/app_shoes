import 'package:flutter/material.dart';

import 'package:app_shoes/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[

            //Page Content
            _ShoeContent(),

            //Footer
            AddShoppingCartButton(amount: 180.0)

          ],
        ),
      ),
    );
  }
}

class _ShoeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[

            //appbar
            CustomAppBar(title: 'For you'),
            SizedBox(height: 10),

            //show preview
            Hero(
              tag: 'shoe-1',
              child: Material(
                child: SingleChildScrollView(
                  child: ShoePreview(),
                )
              )
            ),
            
            ShowDescription(
              title: 'Nike Air Max 720',
              description: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so. ",
            )


          ],
        ),
      )
    );
  }
}
