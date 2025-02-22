import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix/page_1.dart';
import 'package:netflix/page_2.dart';
import 'package:netflix/page_3.dart';
import 'package:netflix/page_4.dart'; // ✅ Correct Import

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

   final List<String> imagePaths = [
    'assets/movie-1.png',
   'assets/movie-2.png',
   'assets/movie-3.png',
   'assets/movie-4.png',
   'assets/movie-5.png',
   'assets/movie-6.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
          options: CarouselOptions(
            height: 280.0,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0, // Ensures full coverage
            aspectRatio: 16 / 9, // Adjust if needed
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
          ),
          items: imagePaths.map((path) {
            return Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            path,
            fit: BoxFit.cover, // Covers entire width
            width: double.infinity,
          ),
        ),
            );
          }).toList(),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
          Text('Watch before TV',style: TextStyle(fontSize: 
          20,fontWeight: FontWeight.w800,color: Colors.white),),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 30,color: Colors.red,)
          ],),
        ),
        SizedBox(height: 10,),
             Page_1(),
             SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
          Text('Watch Tranding Movies',style: TextStyle(fontSize: 
          20,fontWeight: FontWeight.w800,color: Colors.white),),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 30,color: Colors.red,)
          ],),
        ),
                SizedBox(height: 10,),
                Page_2(),  
                 SizedBox(height: 7,),
                   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
          Text('Watch Thrills & more',style: TextStyle(fontSize: 
          20,fontWeight: FontWeight.w800,color: Colors.white),),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 30,color: Colors.red,)
          ],),
        ),
        SizedBox(height: 10,),
        Page_3(),
        SizedBox(height: 7,),
        
                   Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
          Text('Watch Romance & Comedy',style: TextStyle(fontSize: 
          20,fontWeight: FontWeight.w800,color: Colors.white),),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 30,color: Colors.red,)
          ],),
        ),
        SizedBox(height: 10,),
         Page_4(),
         SizedBox(height: 7,),
                
        
            ],
          ),
        ),
      ),
    );
  }
}
