import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
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
              Text('Email',style:TextStyle(color: Color(0xffFC9E12),) ,),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                 hintText: 'Softxion@gmail.com',
                 hintStyle: TextStyle(color: Color(0xffFC9E12),),

                 border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Color(0xffFC9E12),
                  
                  ),
                  borderRadius: BorderRadius.circular(30),
           
                 ),
           
                ),
              ),
               SizedBox(height: 20,),
           
               Text('Pasword',style:TextStyle(color: Color(0xffFC9E12),) ,),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                 hintText: '*********',
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
                  backgroundColor:  Color(0xffFC9E12),
                  minimumSize: Size(270, 40),
                ), child: Text('login in',style: TextStyle(color: Colors.black),)),
              ),
            
           
           
            ],
           ),
         ),
       
      ),
    );
  }
}