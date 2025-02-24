import 'package:flutter/material.dart';

class Tv_3 extends StatefulWidget {
  const Tv_3({super.key});

  @override
  State<Tv_3> createState() => _Tv_3State();
}

class _Tv_3State extends State<Tv_3> {
  List<String> images = [
    'assets/h-1.png',
    'assets/h-2.png',
    'assets/h-3.png',
    'assets/h-4.png',
    'assets/h-5.png',
    'assets/h-6.png',
    'assets/h-7.png',
    'assets/h-8.png',
    'assets/h-9.png',
    'assets/h-10.png',
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
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  child: AspectRatio(
                    aspectRatio: 3 / 4, // Maintain image ratio
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.025), // Responsive padding
                  child: Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/king.png',
                        width: screenWidth * 0.06, // Scales the icon responsively
                        height: screenWidth * 0.06,
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
