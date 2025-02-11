import 'package:flutter/material.dart';

class Mybatton extends StatelessWidget {
  const Mybatton({super.key, required this.text, this.onPressed});
  final String text ;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        padding:const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
      ),
      child: Text(text),
    );
  }
}
