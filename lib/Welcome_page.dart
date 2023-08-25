import 'package:flutter/material.dart';
import 'package:login_page/Login_Page.dart';
import 'package:login_page/Sign_up_page.dart';

class Welcome_page extends StatelessWidget {
  const Welcome_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFE7EEFF),
        child: Column(
          children: [
            SizedBox(height: 150), // Added SizedBox to provide spacing
            RichText(text: TextSpan(
              children: [
                TextSpan(text: "Welcome to\n",style: TextStyle(
                  color: Color(0xff324db1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
                WidgetSpan(child: SizedBox(height: 40,)),
                TextSpan(text: "Educational App",style: TextStyle(
                  color: Color(0xff324db1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ))
              ]
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30,),
            Image.asset("assets/image/Welcome.png"),
            SizedBox(height: 30,),
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (Contex) => Login_page()));
                    },
                    child: Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xff324db1),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                          child: Text("Login",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (Contex) => Signup_page(),
                      )
                      );
                    },
                    child: Text('Sign up',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}