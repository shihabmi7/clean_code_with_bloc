import 'package:flutter/material.dart';

import '../../data/models/note_model.dart';

class NoteCard extends StatelessWidget {
  final Note note;

  NoteCard({required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(note.title), subtitle: Text(note.content));
  }
}
