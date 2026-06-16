import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custem_app_bar.dart';
import 'package:notes_app/views/widgets/custem_text_filed.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // تم تغليف الـ Padding بـ Scaffold وحطينا لون الخلفية الغامق بتاعك لمنع الشاشة الحمراء
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const Gap(50), // مسافة أمان من فوق عشان الـ AppBar منزقش في السقف (Status Bar)

            const CustemAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
            ),

            const Gap(24), // مسافة مريحة بين الـ AppBar وأول حقل

            const CustemTextFiled(
              hint: 'Title',
            ),

            const Gap(16), // مسافة بين الحقلين

            const CustemTextFiled(
              hint: 'Content',
              maxLines: 5, // 👈 تأكد إن الـ CustemTextFiled بتاعك بياخد parameter اسمه maxLines وبيباصيه للـ TextField الأصلي
            ),
          ],
        ),
      ),
    );
  }
}