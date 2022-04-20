import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CustomInputBox.dart';

class trucksListPage extends StatelessWidget {

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
                      'Liste véhicules',
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 27,
                          color: Color(0xff0C2551),
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: FlatButton(
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        color: Color(0xfff5f6f9),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Expanded(child:
                            Text('158 TU 2035',
                              style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 14,
                                  color: Color(0xff0C2551),
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        )),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

