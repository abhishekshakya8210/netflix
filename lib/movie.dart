import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix/title_1.dart';
import 'package:netflix/title_2.dart';
import 'package:netflix/title_3.dart';
import 'package:netflix/title_4.dart';

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  final List<String> imagePaths = [
    'assets/t_1.png',
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
              sectionTitle("Watch before TV"),
              SizedBox(height: screenHeight * 0.015),
              Title_1(),
              SizedBox(height: screenHeight * 0.02),
              sectionTitle("Watch Trending Movies"),
              SizedBox(height: screenHeight * 0.015),
              Title_2(),
              SizedBox(height: screenHeight * 0.02),
              sectionTitle("Watch Thrills & More"),
              SizedBox(height: screenHeight * 0.015),
              Title_3(),
              SizedBox(height: screenHeight * 0.02),
              sectionTitle("Watch Romance & Comedy"),
              SizedBox(height: screenHeight * 0.015),
              Title_4(),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth * 0.05, // Responsive text size
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_back_ios_new_outlined,
            size: screenWidth * 0.07, // Responsive icon size
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
