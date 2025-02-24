import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    // Get screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.045; // Responsive font size
    double descriptionFontSize = screenWidth * 0.04; // Smaller font for content

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Dynamic padding
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                'What is Netflix?',
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              iconColor: Colors.red, // Red icon color
              collapsedIconColor: Colors.red, // Red when collapsed
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Text(
                    'Netflix is a popular streaming service that offers a wide variety of movies, TV shows, documentaries, and original content. It allows users to watch content on demand over the internet for a monthly subscription fee.',
                    style: TextStyle(
                      fontSize: descriptionFontSize,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Netflix content',
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              iconColor: Colors.red, // Red icon color
              collapsedIconColor: Colors.red, // Red when collapsed
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Text(
                    'Netflix offers a vast collection of content, including movies, TV shows, documentaries, and anime, across multiple genres. Here’s a breakdown of what you can find on Netflix:',
                    style: TextStyle(
                      fontSize: descriptionFontSize,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Netflix is good or bad',
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              iconColor: Colors.red, // Red icon color
              collapsedIconColor: Colors.red, // Red when collapsed
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Text(
                    'Netflix, like any service, has both pros and cons, depending on how you use it. Here’s a balanced view:',
                    style: TextStyle(
                      fontSize: descriptionFontSize,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                'Is it good for children?',
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              iconColor: Colors.red, // Red icon color
              collapsedIconColor: Colors.red, // Red when collapsed
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Text(
                    'Netflix can be good for children, but it depends on how it’s used. It offers a lot of kid-friendly content, but there are also shows and movies not suitable for children.',
                    style: TextStyle(
                      fontSize: descriptionFontSize,
                      color: Colors.grey,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
