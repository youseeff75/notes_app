import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custem_search_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Notes',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
        const SizedBox(height: 0,),
              Transform.translate(
                offset: const Offset(0, -4),
              child:  Text(
                'Organize your ideas ✨',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              ),
            ],
          ),

          const CustemSearchIcon(),
        ],
      ),
    );
  }
}