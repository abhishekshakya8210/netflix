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
    'assets/z-5.png',
    'assets/t_2.png',
    'assets/t_3.png',
    'assets/t_4.png',
    'assets/t_5.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight * 0.35, // 35% of screen height
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: imagePaths.map((path) {
                  return Container(
                    margin: EdgeInsets.all(screenWidth * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: screenHeight * 0.02),
              
              buildSectionTitle('Watch before TV', screenWidth),
              SizedBox(height: screenHeight * 0.015),
              Tv_1(),
              SizedBox(height: screenHeight * 0.015),

              buildSectionTitle('Trending TV Shows', screenWidth),
              SizedBox(height: screenHeight * 0.015),
              Tv_2(),
              SizedBox(height: screenHeight * 0.015),

              buildSectionTitle('Thrills & More', screenWidth),
              SizedBox(height: screenHeight * 0.015),
              Tv_3(),
              SizedBox(height: screenHeight * 0.015),

              buildSectionTitle('Romance & Comedy', screenWidth),
              SizedBox(height: screenHeight * 0.015),
              Tv_4(),
              SizedBox(height: screenHeight * 0.015),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, double screenWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth * 0.05, // Responsive font size
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_back_ios_new_outlined,
            size: screenWidth * 0.06,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
