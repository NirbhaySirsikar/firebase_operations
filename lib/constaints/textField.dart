import 'package:flutter/material.dart';

class CustomTextEditField extends StatelessWidget {
  const CustomTextEditField(
      {Key? key,
      required this.controller,
      required this.labelTxt,
      required this.visibility,
      required this.valid});

  final TextEditingController controller;
  final String labelTxt;
  final bool visibility, valid;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
      child: TextFormField(
        decoration: const InputDecoration(
          errorStyle: TextStyle(color: Colors.red, fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        controller: controller,
        obscureText: visibility,
        validator: (val) {
          if (val == null || val.contains('0')) {
            return "Please Enter a Valid Email";
          }
          return null;
        },
      ),
    );
  }
}
