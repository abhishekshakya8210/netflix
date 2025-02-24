import 'package:flutter/material.dart';

class Page_4 extends StatefulWidget {
  const Page_4({super.key});

  @override
  State<Page_4> createState() => _Page_4State();
}

class _Page_4State extends State<Page_4> {
  List<String> images = [
    'assets/c-1.png',
    'assets/c-2.png',
    'assets/c-3.png',
    'assets/c-4.png',
    'assets/c-5.png',
    'assets/c-6.png',
    'assets/c-7.png',
    'assets/c-8.png',
    'assets/c-9.png',
    'assets/c-10.png',
    'assets/c-11.png',
    'assets/c-12.png',
    'assets/c-13.png',
    'assets/c-14.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.25, // 25% of screen height
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: screenHeight * 0.25,
            width: screenWidth * 0.7, // 70% of screen width
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
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
