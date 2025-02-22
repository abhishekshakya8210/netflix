import 'package:flutter/material.dart';

class Live_2 extends StatefulWidget {
  const Live_2({super.key});

  @override
  State<Live_2> createState() => _Live_2State();
}

class _Live_2State extends State<Live_2> {
  // ✅ Corrected list structure
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
    return Container(
      height: 320,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 320,
            width: 200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Smooth corners
                  child: AspectRatio(
                    // Adjust the ratio as needed (example: 3 / 4)
                    aspectRatio: 3 / 4,
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover, // Image covers the AspectRatio box without distortion
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
