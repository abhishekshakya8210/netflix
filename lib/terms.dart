import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.045; // Responsive font size

    return Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05), // Responsive padding
        child: Center(
          child: Text(
            '''Twinkle, twinkle, little star,  
How I wonder what you are!  
Up above the world so high,  
Like a diamond in the sky.  

When the blazing sun is gone,  
When he nothing shines upon,  
Then you show your little light,  
Twinkle, twinkle, all the night.  

Then the traveler in the dark,  
Thanks you for your tiny spark;  
He could not see which way to go,  
If you did not twinkle so.  

In the dark blue sky you keep,  
And often through my curtains peep,  
For you never shut your eye,  
Till the sun is in the sky.  

As your bright and tiny spark,  
Lights the traveler in the dark,  
Though I know not what you are,  
Twinkle, twinkle, little star.''',
            style: TextStyle(
              fontSize: fontSize, // Dynamic font size
              color: Colors.white, // White text color
              fontWeight: FontWeight.w500,
              height: 1.5, // Adjust line height
            ),
            textAlign: TextAlign.center, // Center align text
          ),
        ),
      ),
    );
  }
}
