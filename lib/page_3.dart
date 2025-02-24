import 'package:flutter/material.dart';

class Page_3 extends StatefulWidget {
  const Page_3({super.key});

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> {
  List<String> images = [
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
            width: screenWidth * 0.35, // 35% of screen width
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                  child: AspectRatio(
                    aspectRatio: 3 / 4, // Standard movie poster ratio
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.02),
                  child: Container(
                    height: screenHeight * 0.06, // 6% of screen height
                    width: screenHeight * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/king.png',
                        width: screenHeight * 0.04, // Adjusted based on screen size
                        height: screenHeight * 0.04,
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
