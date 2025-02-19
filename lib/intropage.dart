
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:netflix/help.dart';
import 'package:netflix/login.dart';
import 'package:netflix/sign.dart';

class Intropage extends StatefulWidget {
  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  List<PageViewModel> getPages(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return [
      PageViewModel(
        decoration: getPageDecoration(),
        image: getImage('assets/i-1.png', screenHeight, screenWidth),
        titleWidget: getTitle('Unlimited Movies & TV Shows'),
        body: 'Binge-watch your favorite movies and series anytime, anywhere.',
      ),
      PageViewModel(
        decoration: getPageDecoration(),
        image: getImage('assets/i-5.png', screenHeight, screenWidth),
        titleWidget: getTitle('Download and Watch Offline'),
        body: 'Save your favorite shows and watch later, even without the internet.',
      ),
      PageViewModel(
        decoration: getPageDecoration(),
        image: getImage('assets/i-3.png', screenHeight, screenWidth),
        titleWidget: getTitle('Kid-Friendly Content'),
        body: 'Create a safe and fun experience for your children with a dedicated kids section.',
      ),
      PageViewModel(
        decoration: getPageDecoration(),
        image: getImage('assets/i-4.png', screenHeight, screenWidth),
        titleWidget: getTitle('Watch on Any Device'),
        body: 'Enjoy Netflix on your phone, tablet, laptop, or TV with one account.',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Image.asset('assets/netflix.png', height: 50),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                 GestureDetector(
                  onTap: (){
                  ScaffoldMessenger.of(

                    context).showSnackBar(
                    SnackBar(backgroundColor:Colors.blueAccent,
                    content:  Text('Sorry this is empty file'),
                    duration: Duration(seconds: 2),),
                    );
                  },
                  child: Text('PRIVACY', style: TextStyle(fontSize:
                   18, color: Colors.white))),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Sign())),
                    child: const Text('SIGN IN', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Help())),
                    child: const Icon(Icons.more_vert, size: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF141414), Color(0xFFE50914)], // Netflix Theme
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: IntroductionScreen(
            globalBackgroundColor: Colors.transparent,
            showBackButton: true,
            back: const Text('Back', style: TextStyle(fontSize: 20, color: Colors.white)),
            skip: const Text('Skip', style: TextStyle(fontSize: 20, color: Colors.white)),
            next: const Icon(Icons.arrow_forward_ios_rounded, size: 30, color: Colors.white),
            done: const Text('Get Started', style: TextStyle(fontSize: 20, color: Colors.white)),
            dotsDecorator: DotsDecorator(color: Colors.grey, activeColor: Colors.red),
            onDone: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login())),
            pages: getPages(context),
          ),
        ),
      ),
    );
  }

  // Reusable Image Widget
  Widget getImage(String assetPath, double screenHeight, double screenWidth) {
    return Center(
      child: Image.asset(assetPath, height: screenHeight * 0.45, width: screenWidth * 0.85),
    );
  }

  // Reusable Title Widget (Netflix-Style)
  Widget getTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
      textAlign: TextAlign.center,
    );
  }

  // Page Decoration
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imageFlex: 2,
      bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
