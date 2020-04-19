import 'package:flutter/material.dart';

import 'package:app_shoes/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Scaffold(
        body: CustomAppBar(title: 'For you')
      ),
    );
  }
}