import 'package:flutter/material.dart';

class Tv_2 extends StatefulWidget {
  const Tv_2({super.key});

  @override
  State<Tv_2> createState() => _Tv_2State();
}

class _Tv_2State extends State<Tv_2> {
  List<String> images = [
    'assets/d-1.png',
    'assets/d-2.png',
    'assets/d-3.png',
    'assets/d-4.png',
    'assets/d-5.png',
    'assets/d-6.png',
    'assets/d-7.png',
    'assets/d-8.png',
    'assets/d-9.png',
    'assets/d-10.png',
    'assets/d-11.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.4, // 40% of screen height
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: screenHeight * 0.4,
            width: screenWidth * 0.4, // 40% of screen width
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              child: AspectRatio(
                aspectRatio: 3 / 4,
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
