import 'package:flutter/material.dart';
import '../comonents/shoe_tile.dart';
import '../model/shoe_mode.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search....',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Colors.black,width: 0.5
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: Colors.black,width: 0.5
                    )
                ),
              ),
            ),
          ),
          //message
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
            child: Text("Get ready to rethink everything you thought.",style: TextStyle(
              fontSize: 16,color: Colors.grey,
            ),textAlign: TextAlign.justify,),
          ),
          //hot picks
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot Picks ♨️",style: TextStyle(
                  fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold
                ),textAlign: TextAlign.justify,),
                Text("See All",style: TextStyle(
                  fontSize: 18,color: Colors.black54,
                ),textAlign: TextAlign.justify,)
              ],
            ),
          ),
          Expanded(child:
          ListView.builder(itemBuilder: (context,index){
            ShoeModel shoeModel = ShoeModel(name: 'Air Jordan', price: '75.21', imagePath: 'assets/images/shoes1.png', description: 'This product is amazing in the Nike brand at tiem');
            return ShoeTile(shoeModel: shoeModel,

            );
          }))
        ],
      ),
    );
  }
}
