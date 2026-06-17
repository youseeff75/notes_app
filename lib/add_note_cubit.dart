import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future<void> addNote(NoteModel note) async {
    print('Start Add Note');

    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);

      print('Added Successfully');

      emit(AddNoteSuccess());
    } catch (e) {
      print('ERROR: $e');

      emit(AddNoteFailure(e.toString()));
    }
  }
}