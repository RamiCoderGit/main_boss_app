import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CustomInputBox.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 50),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 35,
                        color: Color(0xff0C2551),
                        fontWeight: FontWeight.w900
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                 /* Container(
                    child: Row(
                      children: [
                        Nv_btn(char : 'G'),
                      ],
                    ),
                  ),*/


                  SizedBox(height: 20,),
                  CustomForm(
                    label: 'Name', inputHint: 'Rami'
                  ),
                  SizedBox(height: 20,),

                  CustomForm(label: 'Email', inputHint: 'exemple@exemple.com'),
                  SizedBox(height: 20,),

                  CustomForm(label: 'Password', inputHint: '8 caractères dont 1 majuscule, 1 caractère spécial'),
                  SizedBox(height: 20,),
                  Text("Creating an account means you're okay with\nour Terms of Service and Privacy Policy",
                  style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 15.5,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8f9db5).withOpacity(0.5)
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: scrWidth*0.85,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xff0962ff),
                      borderRadius: BorderRadius.circular(40),

                    ),
                      child: Center(
                        child: Text('Create an Account', style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                        ),
                      ),
                  ),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'Already have an account?',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8f9db5).withOpacity(0.5)
                        ),
                      ),
                      TextSpan(text: ' Sign In',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff90b7ff)
                        ),
                      ),
                    ]
                  ),
                  ),
                ],
              ),
                  ClipPath(
                    clipper: OuterClippedPart(),
                    child: Container(
                      color: Color(0xff0962ff),
                      width: scrWidth,
                      height: scrHeight,
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}



class OuterClippedPart extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width/2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height /4.5);
    path.cubicTo(size.width*0.6, size.height*0.2, size.width*0.85, size.height*0.03, size.width/2, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}