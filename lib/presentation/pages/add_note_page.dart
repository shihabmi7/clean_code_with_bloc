import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import '../../application/blocks/note_bloc.dart';
 import '../../data/models/note_model.dart';

class AddNotePage extends StatelessWidget {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _titleController, decoration: InputDecoration(labelText: "Title")),
            TextField(controller: _contentController, decoration: InputDecoration(labelText: "Content")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final note = Note(
                  id: Uuid().v4(),
                  title: _titleController.text,
                  content: _contentController.text,
                );
                context.read<NoteBloc>().add(AddNewNote(note));
                context.go('/'); // Go back to list page

                //Navigator.pop(context);
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
