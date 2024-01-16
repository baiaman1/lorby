import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const Button({ Key? key, required this.onTap, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
      ),
      
    );
  }
}