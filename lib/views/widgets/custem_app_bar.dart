import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custem_search_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Gap(20),
        Text('Notes',style: TextStyle(
          fontSize: 27,
        ),
        ),
Spacer(),
          CustemSearchIcon(),
      ],

    );
  }
}
