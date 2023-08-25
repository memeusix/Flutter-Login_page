import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_page/Login_Page.dart';

class Signup_page extends StatelessWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff325db1),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                color: Color(0xffe7f0ff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "Sign up\n",style: TextStyle(
                        color: Color(0xff325db1),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      )),
                    ]
                  ),
                    textAlign: TextAlign.center,
                  ),

                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff325db1),
                    ),
                    child: Center(
                        child: Text("Sign Up",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                         ),
                        ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('or sign-up with',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/image/facebook.png",scale: 1.5,),
                      SizedBox(width: 25),
                      Image.asset("assets/image/google.png",scale: 1.5,),
                      SizedBox(width: 25,),
                      Image.asset('assets/image/twitter.png'),
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (Contex) => Login_page()));
                    },
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Already a member? ",style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        )),
                        TextSpan(text: " Login",style: TextStyle(
                          color: Color(0xff325db1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                      ]
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
