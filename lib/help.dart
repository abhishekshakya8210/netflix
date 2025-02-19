import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,  // Netflix Dark Theme
        appBar: AppBar(
          title: Image.asset('assets/n-1.png', height: screenHeight * 0.07), 
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),
              Text(
                'Find help online',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,  // White Text
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Expanded(
                child: ListView(
                  children: [
                    _helpItem(Icons.support_agent, 'Help Center', screenWidth),
                    _helpItem(Icons.request_page, 'Request a title', screenWidth),
                    _helpItem(Icons.wifi_off, 'Fix a connection issue', screenWidth),
                    _helpItem(Icons.privacy_tip, 'Privacy Statement', screenWidth),
                    _helpItem(Icons.article, 'Terms of Use', screenWidth),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.03),
                          Text(
                            'Contact',
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Netflix Customer Service',
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Text(
                            'We will connect the call for free using your',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            'internet connection',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          _buildButton(Icons.call, 'PHONE', screenWidth, screenHeight),
                          SizedBox(height: screenHeight * 0.02),
                          _buildButton(Icons.chat, 'CHAT', screenWidth, screenHeight),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _helpItem(IconData icon, String title, double screenWidth) {
    return Container(
      margin: EdgeInsets.only(bottom: screenWidth * 0.02),
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.04,
        horizontal: screenWidth * 0.05,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[900],  // Dark Card Color
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.2),  // Red Glow Effect
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: screenWidth * 0.07, color: Colors.red),  // Netflix Red Icons
          SizedBox(width: screenWidth * 0.04),
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, String text, double screenWidth, double screenHeight) {
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,  // Netflix Red Buttons
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 5,
          shadowColor: Colors.redAccent,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon, size: screenWidth * 0.08, color: Colors.white),
            Text(
              text,
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
