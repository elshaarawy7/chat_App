import 'package:flutter/material.dart';

class Textbton extends StatelessWidget {
  const Textbton({super.key, required this.title, this.onPressed});

  final String title ;
  final  void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
                  onPressed: onPressed,
                  child:  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
  }
}