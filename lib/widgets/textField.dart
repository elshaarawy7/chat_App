import 'package:flutter/material.dart';

class Text_field extends StatelessWidget {
  const Text_field({super.key, this.obscureText, this.labelText});
  final obscureText ;
  final labelText ;

  @override

  Widget build(BuildContext context) {
    return TextFormField( 
        validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your $labelText";
        }
        if (labelText.toLowerCase().contains("email") &&
      !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
     return 'Enter a valid email';
  }

       else if(obscureText&&value.length<6){
         return "Password must be at least 6 characters";
       } 

        return null; // لازم ترجع null لو مفيش خطأ
      },
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText:labelText,
          labelStyle: const TextStyle(
            color: Colors.black , 
            fontSize: 14 ,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),     
          ),
        ));
  }
}
