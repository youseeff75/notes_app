import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app/views/widgets/custem_app_bar.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustemAppBar(),

            Expanded(child: NotesListView()),



                ],
              ),
            ),



    );
  }
}
class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),

      );
    });
  }
}
