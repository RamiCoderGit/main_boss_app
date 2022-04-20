import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomForm extends StatefulWidget {

  String label;
  String inputHint;
  CustomForm({required this.label,required this.inputHint});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {

  bool isSubmitted = false;
  final checkBoxIcon = 'assets/checkbox.svg';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left:25.0, bottom: 8),
            child: Text(widget.label,
            style: TextStyle(
              fontFamily: 'ProductSans',
              fontSize: 15,
              color: Color(0xff8f9db5),
            )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,0,30,15),
          child: TextFormField(
            onEditingComplete: (){
              setState(() {
                isSubmitted = true;
              });
            },
            style: TextStyle(
              fontSize: 19,
              color: Color(0xff0962ff),
              fontWeight: FontWeight.bold
            ),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: TextStyle(
                  fontSize: 19,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w500
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 27, horizontal: 25),
              focusColor: Color(0xff0962ff),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xff0962ff)
                ),
              ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              suffixIcon: isSubmitted == true? Visibility(visible:true,child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(checkBoxIcon),
              ),):
                  Visibility(
                    visible: false,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(checkBoxIcon),
                      ),
                  ),
            ),
          ),
        )
      ],
    );
  }
}
