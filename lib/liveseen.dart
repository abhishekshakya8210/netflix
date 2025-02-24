import 'package:flutter/material.dart';

class LiveSeen extends StatefulWidget {
  const LiveSeen({super.key});

  @override
  State<LiveSeen> createState() => _LiveSeenState();
}

class _LiveSeenState extends State<LiveSeen> {
  List<String> image = [
    'assets/h-1.png', 'assets/h-2.png', 'assets/h-3.png', 'assets/h-4.png',
    'assets/h-5.png', 'assets/h-6.png', 'assets/h-7.png', 'assets/h-8.png',
    'assets/h-9.png', 'assets/h-10.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.1, // ✅ Dynamic AppBar height
          automaticallyImplyLeading: false, 
          centerTitle: true,
          backgroundColor: Colors.grey.shade800,
          title: Text(
            'Live Shows',
            style: TextStyle(
              fontSize: screenWidth * 0.08, // ✅ Responsive font size
              fontWeight: FontWeight.w800,
              color: Colors.red,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04), // ✅ Dynamic padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02), // ✅ Dynamic spacing

              // ✅ Wrap GridView in Expanded to prevent overflow
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth > 600 ? 3 : 2, // ✅ 3 columns on tablets, 2 on phones
                    crossAxisSpacing: screenWidth * 0.03,
                    mainAxisSpacing: screenHeight * 0.02,
                    childAspectRatio: 3 / 2, // ✅ Adjusted for better look
                  ),
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          image[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
