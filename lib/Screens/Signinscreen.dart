import 'package:flutter/material.dart';

import 'Loginscreen.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor:Colors.black,
      body: SafeArea(
         child:Padding(
           padding:  EdgeInsets.all(20),
           child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
               Text('data',style: TextStyle(fontSize: 17,color: Color(0xffFC9E12),),),
              SizedBox(height: 10,),
               Text('data',style:TextStyle(color: Color(0xffFC9E12),fontSize: 17,) ,),
              SizedBox(height: 40,),
              Text('Username',style:TextStyle(color: Color(0xffFC9E12),) ,),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                 hintText: 'softxion',
                 hintStyle: TextStyle(color: Color(0xffFC9E12),),

                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFC9E12),
                  
                  ),
                  borderRadius: BorderRadius.circular(30),
           
                 ),
           
                ),
              ),
               SizedBox(height: 20,),
           
                              Text('Email',style:TextStyle(color: Color(0xffFC9E12),) ,),

              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                 hintText: 'softxion@gmail.com',
                 hintStyle: TextStyle(color: Color(0xffFC9E12),),

                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  Color(0xffFC9E12),
                  
                  ),
                  borderRadius: BorderRadius.circular(30),
           
                 ),
           
                ),
              ),
               SizedBox(height: 20,),
               Text('Password',style:TextStyle(color: Color(0xffFC9E12),) ,),
               SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                 hintText: '********',
                 hintStyle: TextStyle(color: Color(0xffFC9E12),),

                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffFC9E12),
                  
                  ),
                  borderRadius: BorderRadius.circular(30),
           
                 ),
           
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFC9E12)
                ), child: Text('sign in')),
              ),
            //extra for next page from mw .asfand
                   ElevatedButton(onPressed: (){ Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Loginscreen()));}, child: Text('data')),
           
           
            ],
           ),
         ),
        // Center(
        //   child: Column(children: [
        //    const SizedBox(height:30),
        //     Icon(Icons.lock,size: 100,),
        //     SizedBox(height:20),
        //     Text("welcome back Fitness Tracker",
        //     style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.grey),),
        //     SizedBox(height:20),
        //     Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: TextField(
        //         decoration: InputDecoration(
        //         enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        //         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),),
        //         fillColor:const Color.fromARGB(255, 219, 216, 216),
        //         filled: true,
        //       ),),
        //     ),
        //     SizedBox(height:20),
        //      Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 20),
        //       child: TextField(
        //         decoration: InputDecoration(
        //         enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        //         focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300),),
        //         fillColor:const Color.fromARGB(255, 219, 216, 216),
        //         filled: true,
        //       ),),
        //     ),
        //   ],),
        // ),
      ),
    );
  }
}