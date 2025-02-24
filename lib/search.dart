import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> arrimage = [
    'assets/a-1.png', 'assets/a-2.png', 'assets/a-3.png', 'assets/a-4.png',
    'assets/a-5.png', 'assets/a-6.png', 'assets/a-7.png', 'assets/a-8.png',
    'assets/a-9.png', 'assets/a-10.png', 'assets/a-11.png', 'assets/d-1.png',
    'assets/d-2.png', 'assets/d-3.png', 'assets/d-4.png', 'assets/d-5.png',
    'assets/d-6.png', 'assets/d-7.png', 'assets/d-8.png', 'assets/d-9.png',
    'assets/d-10.png', 'assets/d-11.png', 'assets/z-1.png', 'assets/z-2.png',
    'assets/z-3.png', 'assets/z-4.png', 'assets/z-5.png', 'assets/z-6.png',
    'assets/z-7.png', 'assets/z-8.png', 'assets/z-9.png', 'assets/z-10.png',
    'assets/z-11.png', 'assets/z-12.png', 'assets/z-13.png', 'assets/z-14.png',
    'assets/z-15.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black, // ✅ Background for contrast
        appBar: AppBar(
          backgroundColor: Colors.grey.shade600,
          toolbarHeight: screenHeight * 0.12, // ✅ Dynamic height
          automaticallyImplyLeading: false, // ✅ Removes back arrow
          title: SizedBox(
            width: screenWidth * 0.85, // ✅ Responsive width
            child: TextField(
              style: TextStyle(color: Colors.white), // ✅ White input text
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Search movie,song & more",
                suffixIcon: Icon(Icons.search,size: 30,color: Colors.grey,),
                hintStyle: TextStyle(color: Colors.white70), // ✅ Light white hint text
                filled: true,
                fillColor: Colors.grey[800], // ✅ Slightly darker background
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // ✅ White border
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2), // ✅ Red border
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ),
        
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04), // ✅ Dynamic padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // ✅ Aligns text properly
            children: [
              Text(
                'Trending Searches',
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // ✅ Responsive font size
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // ✅ Dynamic spacing

              // ✅ Wrap GridView in Expanded to avoid overflow
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth > 600 ? 3 : 2, // ✅ Adjust columns based on width
                    crossAxisSpacing: screenWidth * 0.03,
                    mainAxisSpacing: screenHeight * 0.02,
                    childAspectRatio: 3 / 2, // ✅ Adjusted for better look
                  ),
                  itemCount: arrimage.length, // ✅ Correct count
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          arrimage[index], // ✅ Correct way to access images
                          fit: BoxFit.cover,
                          width: double.infinity, // ✅ Covers full container width
                          height: double.infinity, // ✅ Covers full container height
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
