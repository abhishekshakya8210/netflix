import 'package:flutter/material.dart';

class Live_3 extends StatefulWidget {
  const Live_3({super.key});

  @override
  State<Live_3> createState() => _Live_3State();
}

class _Live_3State extends State<Live_3> {
  // ✅ Image list
  final List<String> images = [
    'assets/z-1.png',
    'assets/z-2.png',
    'assets/z-3.png',
    'assets/z-4.png',
    'assets/z-5.png',
    'assets/z-6.png',
    'assets/z-7.png',
    'assets/z-8.png',
    'assets/z-9.png',
    'assets/z-10.png',
    'assets/z-11.png',
    'assets/z-12.png',
    'assets/z-13.png',
    'assets/z-14.png',
    'assets/z-15.png',
    'assets/z-16.png',
  ];

  @override
  Widget build(BuildContext context) {
    // ✅ Get screen dimensions using MediaQuery
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.4, // ✅ Dynamic height based on screen size
      width: double.infinity, // ✅ Takes full width
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02), // Responsive margin
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: screenWidth * 0.45, // ✅ Responsive width
            margin: EdgeInsets.all(screenWidth * 0.02), // Responsive spacing
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03), // Responsive border radius
            ),
            child: Stack(
              children: [
                // ✅ Image with rounded corners
                ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03), // Smooth corners
                  child: AspectRatio(
                    aspectRatio: 3 / 4, // ✅ Keeps a consistent image ratio
                    child: Image.asset(
                      images[index], 
                      fit: BoxFit.cover, // Covers the entire box without distortion
                    ),
                  ),
                ),
                // ✅ Small Icon Container (Red Box with King Icon)
                Positioned(
                  top: screenHeight * 0.015, // ✅ Responsive position
                  left: screenWidth * 0.03, // ✅ Responsive position
                  child: Container(
                    height: screenWidth * 0.1, // ✅ Responsive size
                    width: screenWidth * 0.1, // ✅ Responsive size
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(screenWidth * 0.02), // Responsive radius
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/king.png',
                        width: screenWidth * 0.07, // ✅ Responsive icon size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
