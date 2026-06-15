import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // الأكشن لما تضغط على الكارت كله (مثلاً فتح تفاصيل النوت)
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xff2B2B2B),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 15,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.note_alt_outlined,
                    color: Color(0xff8B5CF6),
                    size: 28,
                  ),
                ),
                const Spacer(),

                // زرار الثلاث نقاط بعد تشغيله
                IconButton(
                  onPressed: () {
                    // استدعاء دالة الـ Bottom Sheet هنا عند الضغط
                    _showMenuBottomSheet(context);
                  },
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Build your Career with Yousef Ibrahim',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Personal',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.calendar_month_outlined,
                  size: 20,
                  color: Colors.white54,
                ),
                const SizedBox(width: 8),
                const Text(
                  'May 21, 2025',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // الدالة اللي بتظهر القائمة السفلية (Bottom Sheet)
  void _showMenuBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff2B2B2B), // نفس لون الكارت عشان التناسق
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min, // عشان القائمة تاخد حجم العناصر بس
            children: [
              // خط صغير في نص الـ BottomSheet من فوق كشكل جمالي
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 15),

              // زرار المسح
              ListTile(
                leading: const Icon(Icons.delete_outline, color: Colors.redAccent),
                title: const Text(
                  'Delete Note',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // بيقفل الـ Bottom Sheet

                  // رسالة تأكيد للمستخدم إن النوت اتمسحت
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Note deleted successfully'),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}