import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GoogleNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const GoogleNavBar({super.key,required  this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        tabBorderRadius: 17,
        onTabChange: (value)=>onTabChange!(value) ,
        activeColor: Colors.grey[800],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade200,
        tabs: [
          GButton(icon: Icons.home,text: 'Shop',),
          GButton(icon: Icons.shopping_bag,text: 'Cart',),
        ],
      ),
    );
  }
}
