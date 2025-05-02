import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repository/note_repository.dart';
import '../blocks/note_bloc.dart';

final noteRepo = InMemoryNoteRepository();

List<BlocProvider> appBlocProviders = [
  BlocProvider<NoteBloc>(
    create: (_) => NoteBloc(noteRepo)..add(LoadNotes()),
  ),
];
