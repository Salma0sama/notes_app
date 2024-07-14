import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';


part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super (NotesInitial());

  List<NoteModel> ? notes ;
  fetchAllNotes(){
      var notesBox = Hive.box<NoteModel>(kNoteBox);
       notes  = notesBox.values.toList();

       emit(NotesSuccess());
  }
}