import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/blocks/note_bloc.dart';

class NoteListPage extends StatelessWidget {
  const NoteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: BlocBuilder<NoteBloc, NoteState>(
        builder: (context, state) {
          if (state is NotesLoaded) {
            if (state.notes.isEmpty) {
              return Center(child: Text("No notes yet.", style: TextStyle(fontSize: 16, color: Colors.grey)));
            }
            return ListView.separated(
              itemCount: state.notes.length,
              separatorBuilder: (_, __) => Divider(color: Colors.grey.shade300, thickness: 1),
              itemBuilder: (_, i) {
                final note = state.notes[i];
                return ListTile(
                  title: Text(note.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  subtitle: Text(note.content, style: TextStyle(fontSize: 14, color: Colors.black54)),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // GO ROUTE USED
          context.go('/add');

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => BlocProvider.value(
          //       value: context.read<NoteBloc>(), // re-use the same bloc instance
          //       child: AddNotePage(),
          //     ),
          //   ),
          // );
        },
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
      ),
    );
  }
}
