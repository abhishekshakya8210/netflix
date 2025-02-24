import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  const Page_2({super.key});

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  List<String> images = [
    'assets/b-1.png',
    'assets/b-2.png',
    'assets/b-3.png',
    'assets/b-4.png',
    'assets/b-5.png',
    'assets/b-6.png',
    'assets/b-7.png',
    'assets/b-8.png',
    'assets/b-9.png',
    'assets/b-10.png',
    'assets/b-11.png',
    'assets/b-12.png',
    'assets/b-13.png',
    'assets/b-14.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.4, // 40% of screen height
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.03), // 3% of screen width
      ),
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: screenHeight * 0.4,
            width: screenWidth * 0.35, // 35% of screen width
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              child: AspectRatio(
                aspectRatio: 3 / 4, // Standard movie poster ratio
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
