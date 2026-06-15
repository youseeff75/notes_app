import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        )
      ),

      body: const NotesViewBody(),
    );
  }
}
