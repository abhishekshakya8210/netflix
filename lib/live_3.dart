import 'package:flutter/material.dart';

class Live_3 extends StatefulWidget {
  const Live_3({super.key});

  @override
  State<Live_3> createState() => _Live_3State();
}

class _Live_3State extends State<Live_3> {
  // ✅ Corrected list structure
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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 40,
                    width: 40,
                 decoration: BoxDecoration(
                     color: Colors.red,
                     borderRadius: BorderRadius.circular(7)
                 ),
                 child: Stack(
                  children: [
                  Center(child: Image(image: AssetImage('assets/king.png')))
                  ],
                 ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
