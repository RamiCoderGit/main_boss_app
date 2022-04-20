import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CustomInputBox.dart';

class AddDriverPage extends StatelessWidget {

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
                      'Ajouter chauffeur',
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 27,
                          color: Color(0xff0C2551),
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),


                  SizedBox(height: 20,),
                  CustomForm(
                      label: 'Prénom', inputHint: 'prénom du chuaffeur'
                  ),
                  SizedBox(height: 20,),
                  CustomForm(
                      label: 'Nom', inputHint: 'Nom du chuaffeur'
                  ),
                  SizedBox(height: 20,),

                  CustomForm(label: 'Email', inputHint: 'exemple@exemple.com'),
                  SizedBox(height: 20,),

                  CustomForm(label: 'Telephone', inputHint: 'numéro de téléphone'),
                  SizedBox(height: 20,),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: scrWidth*0.85,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xff0962ff),
                      borderRadius: BorderRadius.circular(40),

                    ),
                    child: Center(
                      child: Text('Ajouter chauffeur', style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                      ),
                    ),
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

