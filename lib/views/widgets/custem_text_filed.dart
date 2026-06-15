import 'package:flutter/material.dart';
import 'package:notes_app/constans.dart';

class CustemTextFiled extends StatelessWidget {
  const CustemTextFiled({super.key, required this.hint,  this.maxLines=1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hint, // نص توضيحي داخل الـ TextField
        hintStyle: TextStyle(color: Colors.white70),
        border: buildBorder(),
        enabledBorder: buildBorder(
          Colors.white38,
        ),
        focusedBorder: buildBorder(
         kPrimaryColor
        ),
      ),
    );
  }


  OutlineInputBorder buildBorder([Color color = Colors.white]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
