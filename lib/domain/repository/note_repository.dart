import '../../data/models/note_model.dart';

abstract class NoteRepository {
  List<Note> getAllNotes();
  void addNote(Note note);
}

class InMemoryNoteRepository implements NoteRepository {
  final List<Note> _notes = [];

  @override
  List<Note> getAllNotes() => _notes;

  @override
  void addNote(Note note) {
    _notes.add(note);
  }
}
