import 'package:flutter/material.dart';

class Live_1 extends StatefulWidget {
  const Live_1({super.key});

  @override
  State<Live_1> createState() => _Live_1State();
}

class _Live_1State extends State<Live_1> {
  // ✅ Corrected list structure
  final List<String> images = [
    'assets/a-1.png',
    'assets/a-2.png',
    'assets/a-3.png',
    'assets/a-4.png',
    'assets/a-5.png',
    'assets/a-6.png',
    'assets/a-7.png',
    'assets/a-8.png',
    'assets/a-9.png',
    'assets/a-10.png',
    'assets/a-11.png',
  ];

  @override
  Widget build(BuildContext context) {
    // ✅ Get screen dimensions
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Container(
      height: screenHeight * 0.25, // ✅ Responsive height (adjusts with screen)
      width: double.infinity, // ✅ Takes full width
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02), // Responsive margin
      child: ListView.builder(
        itemCount: images.length, // ✅ Use full list length
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: screenWidth * 0.6, // ✅ Responsive width (adjusts with screen)
            margin: EdgeInsets.all(screenWidth * 0.02), // Responsive spacing
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03), // Responsive border radius
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03), // Smooth corners
                  child: Image.asset(
                    images[index], 
                    fit: BoxFit.cover,
                    width: double.infinity, 
                    height: double.infinity,
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
