import 'package:flutter/material.dart';

class Title_4 extends StatefulWidget {
  const Title_4({super.key});

  @override
  State<Title_4> createState() => _Title_4State();
}

class _Title_4State extends State<Title_4> {
  List<String> images = [
    'assets/g-1.png',
    'assets/g-2.png',
    'assets/g-3.png',
    'assets/g-4.png',
    'assets/g-5.png',
    'assets/g-6.png',
    'assets/g-7.png',
    'assets/g-8.png',
    'assets/g-9.png',
    'assets/g-10.png',
    'assets/g-11.png',
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
