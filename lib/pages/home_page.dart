import 'package:flutter/material.dart';
import 'package:shoesshop/pages/shop_page.dart';

import '../comonents/google_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    // shop page
    ShopPage(),
    // cart page
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        //logo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // header part of nike shoes brand
                DrawerHeader(child: Image.asset('assets/logo/nike.png',color: Colors.white,width: 240,)),
                // divider
                Padding(
                  padding: const EdgeInsets.only(left: 42.0,right: 8),
                  child: Divider(
                    height: 3,
                    thickness: 0.5,color: Colors.white,
                  ),
                ),
                //  --------------  home tab

                Padding(padding: EdgeInsets.only(left: 34),child:
                ListTile(
                  onTap: ()=>Navigator.pop(context),
                  leading: Icon(Icons.home,color: Colors.white,size: 19,),
                  title: Text("Home",style: TextStyle(
                    fontSize: 15,color: Colors.white,
                  ),),
                ),),

                // -------------- info tab

                Padding(padding: EdgeInsets.only(left: 34),child:
                ListTile(
                  leading: Icon(Icons.info,color: Colors.white,size: 19,),
                  title: Text("About",style: TextStyle(
                    fontSize: 15,color: Colors.white,
                  ),),
                ),),


              ],
            ),
            // -------------- logout tab

            Padding(padding: EdgeInsets.only(left: 34),child:
            ListTile(
              leading: Icon(Icons.logout,color: Colors.white,size: 19,),
              title: Text("Logout",style: TextStyle(
                fontSize: 15,color: Colors.white,
              ),),
            ),),

          ],
        ),
        //other pages
      ),
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context){
            return IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },icon: Icon(Icons.menu,size: 17,color: Colors.black,),
            );
          },
        )
      ),
      bottomNavigationBar: GoogleNavBar(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
