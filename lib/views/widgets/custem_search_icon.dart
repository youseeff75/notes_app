import 'package:flutter/material.dart';

class CustemSearchIcon extends StatelessWidget {
  const CustemSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff2B2B2B),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}