import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_node_bottom.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        )
      ),

      body: const NotesViewBody(),
    );
  }
}