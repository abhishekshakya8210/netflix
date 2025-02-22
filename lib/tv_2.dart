import 'package:flutter/material.dart';

class Tv_2 extends StatefulWidget {
  const Tv_2({super.key});

  @override
  State<Tv_2> createState() => _Tv_2State();
}

class _Tv_2State extends State<Tv_2> {
  // ✅ Corrected list structure
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
