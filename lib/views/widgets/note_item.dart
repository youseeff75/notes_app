import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

import '../../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditViewBody();
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Color(note.color),
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
                  IconButton(
                    onPressed: () {
                      _showMenuBottomSheet(context);
                    },
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                note.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                note.subTitle,
                style: const TextStyle(
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

                  ),
                  const Spacer(),
                  const Icon(
                    Icons.calendar_month_outlined,
                    size: 20,
                    color: Colors.white54,
                  ),
                  const SizedBox(width: 8),
                  Text(
                   note.data,
                    style: const TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
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
                  Navigator.pop(context);
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