import 'package:flutter/material.dart';
import 'package:foodage/components/bottom_nav_bar.dart';
import 'package:foodage/const.dart';
import 'package:foodage/pages/coders.dart';
import 'package:foodage/pages/how_it_works.dart';
import 'package:foodage/pages/test_it.dart';
import 'package:foodage/pages/upload_data.dart';

 class HomePage extends StatefulWidget {
   HomePage({super.key});
   var height, width;

   @override
   Widget build(BuildContext context){
     height= MediaQuery.of(context).size.height;
     width= MediaQuery.of(context).size.width;
     return Scaffold(
       body: Container(
         color: Colors.indigo,
         height: height,
         width: width,
         child: Column(
           children: [
             Text(
                 "Foodage",
               style: TextStyle(
                 fontSize: 30,
                 color: Colors.white60,
                 fontWeight: FontWeight.w500,
               ),


             ),
             Container(
               decoration: BoxDecoration(
               ),
               height: height * 0.25,
               width: width,
             ),
             Container(
             decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
     ),
             ),
             height: height * 0.75,
             width: width,

     ),
     ],
         ),
       ),
     );


   }

   State<HomePage> createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {


   int _selectedIndex=0;
   void navigateBottomBar(int index){
     setState(() {
       _selectedIndex=index;
   });}
   //pages
   final List<Widget> _pages=[
     workPage(),

     TestPage(),


     UploadPage(),


     CodersPage(),



   ];









   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor:backgroundColor,
       bottomNavigationBar: MyBottomNavBar(
         onTabChange: (index ) => navigateBottomBar(index),
       ),
       body: _pages[_selectedIndex],
     );
   }
 }
