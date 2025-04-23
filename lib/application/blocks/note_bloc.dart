import 'package:clean_code_with_bloc/data/models/note_model.dart';
import 'package:clean_code_with_bloc/domain/repository/note_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NoteEvent {}

class LoadNotes extends NoteEvent {}

class AddNewNote extends NoteEvent {
  final Note aNote;

  AddNewNote(this.aNote);
}

abstract class NoteState {}

class NotesInitial extends NoteState {}

class NotesLoaded extends NoteState {
  final List<Note> notes;

  NotesLoaded(this.notes);
}

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository repository;

  NoteBloc(this.repository) : super(NotesInitial()) {
    on<LoadNotes>((event, emit) {
      emit(NotesLoaded(repository.getAllNotes()));
    });

    on<AddNewNote>((event, emit) {
      print("Note added: ${event.aNote.title}");
      repository.addNote(event.aNote);
      emit(NotesLoaded(repository.getAllNotes()));
    });
  }
}
