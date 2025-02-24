import 'package:flutter/material.dart';
import 'package:netflix/intropage.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),()
    {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context)=>Intropage()
      ));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text('Netflix',style: TextStyle(fontSize: 60,fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w800,color: Colors.red),),),
    );
  }
}