import 'package:flutter/material.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Color.fromARGB(255, 240, 245, 245),
      body: SafeArea(
        child: Center(
          child: Column(children: [
           const SizedBox(height:30),
            Icon(Icons.lock,size: 100,),
            SizedBox(height:20),
            Text("welcome back Fitness Tracker",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.grey),),
            SizedBox(height:20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),),
                fillColor:const Color.fromARGB(255, 219, 216, 216),
                filled: true,
              ),),
            ),
            SizedBox(height:20),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),),
                fillColor:const Color.fromARGB(255, 219, 216, 216),
                filled: true,
              ),),
            ),
          ],),
        ),
      ),
    );
  }
}