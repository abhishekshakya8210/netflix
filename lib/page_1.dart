import 'package:flutter/material.dart';

class Page_1 extends StatefulWidget {
  const Page_1({super.key});

  @override
  State<Page_1> createState() => _Page_1State();
}

class _Page_1State extends State<Page_1> {
  List<String> images = [
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.25, // 25% of screen height
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: screenHeight * 0.25,
            width: screenWidth * 0.75, // 75% of screen width
            margin: EdgeInsets.all(screenWidth * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          );
        },
      ),
    );
  }
}
