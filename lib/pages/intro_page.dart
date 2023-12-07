import 'package:flutter/material.dart';
import 'package:shoesshop/pages/shop_page.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset('assets/logo/nike.png',width: 280,),
            //title
            SizedBox(height: 150,),
            Text("Just Do It",style: TextStyle(
              fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 25,),
            //subtitle
            Text("Brand new sneakers and custom kiks made premium quality",style: TextStyle(
              fontSize: 16,color: Colors.grey
            ),),
            SizedBox(height: 55,),
            //button
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPage()));
            }, child: Text('f')),
            GestureDetector(
              onTap: (){
                print('go to home page');
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>ShopPage()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,width: 1
                  )
                ),
                child: Center(child: Text("Shop Now",style: TextStyle(
                  fontSize: 19,color: Colors.white
                ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
