import 'package:flutter/material.dart';
import 'package:login_page/Sign_up_page.dart';

class Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xff324db1),
              child: Stack(
                children: [
                  Positioned(
                    top: 110,
                    left: 20,
                    right: 20,
                    child: SizedBox(
                      child: Icon(
                        Icons.computer_outlined,
                        color: Colors.white,
                        size: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
                right: 0,
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.black26,
                    )
                  ],
                  color: Color(0xffe7f0ff),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 22,),
                    Text('Login to Your Account',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff324db1).withOpacity(0.8),
                    ),),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 420,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.black26,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
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
                      height: 20,
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
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle ,size: 15,
                          color: Color(0xff325db1),),
                          SizedBox(width: 5,),
                          Text("Remember Me",
                          style: TextStyle(
                            color: Color(0xff324db1),
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(width: 120,),
                          Text('Forget Password'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xff325db1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Login",style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('OR'),
                    SizedBox(height: 15,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (Context) => Signup_page(),
                         )
                        );
                      },
                      child: RichText(text: TextSpan(
                        children:[
                          TextSpan(text: "Don't Have Account ?   ",style: TextStyle(
                            color: Colors.black,
                          )),
                          TextSpan(text: "Sign up",style: TextStyle(
                            color: Color(0xff325db1),
                            fontWeight: FontWeight.bold
                          )),
                        ]
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}