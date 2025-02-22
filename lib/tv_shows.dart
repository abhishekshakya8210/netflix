import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix/tv_1.dart';
import 'package:netflix/tv_2.dart';
import 'package:netflix/tv_3.dart';
import 'package:netflix/tv_4.dart'; // ✅ Correct Import

class Tv_shows extends StatefulWidget {
  const Tv_shows({super.key});

  @override
  State<Tv_shows> createState() => _Tv_showsState();
}

class _Tv_showsState extends State<Tv_shows> {
  

   final List<String> imagePaths = [
    'assets/t_1.png',
   'assets/t_2.png',
   'assets/t_3.png',
   'assets/t_4.png',
   'assets/t_5.png',
   
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
             Tv_1(),
             SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
          Text('Watch Tranding Tv_showss',style: TextStyle(fontSize: 
          20,fontWeight: FontWeight.w800,color: Colors.white),),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,size: 30,color: Colors.red,)
          ],),
        ),
                SizedBox(height: 10,),
                Tv_2(),  
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
        Tv_3(),
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
         Tv_4(),
         SizedBox(height: 7,),
                
        
            ],
          ),
        ),
      ),
    );
  }
}
