import 'package:flutter/material.dart';

class Tv_1 extends StatefulWidget {
  const Tv_1({super.key});

  @override
  State<Tv_1> createState() => _Tv_1State();
}

class _Tv_1State extends State<Tv_1> {
  List<String> images = [
    'assets/p-1.png',
    'assets/p-2.png',
    'assets/p-3.png',
    'assets/p-4.png',
    'assets/p-5.png',
    'assets/p-6.png',
    'assets/p-7.png',
    'assets/p-8.png',
    'assets/p-9.png',
    'assets/p-10.png',
    'assets/p-11.png',
    'assets/p-12.png',
    'assets/p-13.png',
    'assets/p-14.png',
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
