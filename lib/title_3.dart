import 'package:flutter/material.dart';

class Title_3 extends StatefulWidget {
  const Title_3({super.key});

  @override
  State<Title_3> createState() => _Title_3State();
}

class _Title_3State extends State<Title_3> {
  // ✅ Corrected list structure
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
