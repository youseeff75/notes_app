import 'package:flutter/material.dart';

class CustemSearchIcon extends StatelessWidget {

  const CustemSearchIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff2B2B2B),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {

          },
          icon: Icon(
            icon, //
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    );
  }
}