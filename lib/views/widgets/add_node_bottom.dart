
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custem_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(24),
       CustemTextFiled(
         hint: 'Enter your text',

       ),
          Gap(16),
          CustemTextFiled(
            hint: 'content',
            maxLines: 5,

          ),
        ],

      ),
    );
  }
}

