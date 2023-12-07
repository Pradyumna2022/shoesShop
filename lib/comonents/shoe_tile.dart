import 'package:flutter/material.dart';

import '../model/shoe_mode.dart';

class ShoeTile extends StatelessWidget {
  ShoeModel shoeModel;
   ShoeTile({super.key,required this.shoeModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // shoes pic
          Image.asset(shoeModel.imagePath)
          // shoes description

          // price + button

          // button to add to cart
        ],
      ),
    );
  }
}
