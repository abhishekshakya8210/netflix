import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix/page_1.dart';
import 'package:netflix/page_2.dart';
import 'package:netflix/page_3.dart';
import 'package:netflix/page_4.dart';

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
    // ✅ Getting Screen Width & Height using MediaQuery
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // ✅ Carousel Slider with Responsive Height
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight * 0.35, // Scales with screen size
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
                    margin: EdgeInsets.all(screenWidth * 0.02), // Responsive margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth * 0.03), // Responsive radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: screenWidth * 0.02,
                          spreadRadius: screenWidth * 0.005,
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

              SizedBox(height: screenHeight * 0.02), // Responsive spacing

              _buildSectionTitle('Watch Before TV'),
              Page_1(),
              
              SizedBox(height: screenHeight * 0.01),

              _buildSectionTitle('Watch Trending Movies'),
              Page_2(),
              
              SizedBox(height: screenHeight * 0.01),

              _buildSectionTitle('Watch Thrills & More'),
              Page_3(),
              
              SizedBox(height: screenHeight * 0.01),

              _buildSectionTitle('Watch Romance & Comedy'),
              Page_4(),

              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }

  // ✅ A helper function to create a responsive title row
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05, // Responsive font size
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_back_ios_new_outlined,
            size: MediaQuery.of(context).size.width * 0.06, // Responsive icon size
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
