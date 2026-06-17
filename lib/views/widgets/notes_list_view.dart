import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/notes_cubit.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes?? [] ;
        return Padding(
          padding: EdgeInsets.zero,
          child: ListView.builder(

            itemCount: notes.length,
              itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NoteItem(
                note:notes[index],
              ),
            );
          }),
        );
      },
    );
  }
}