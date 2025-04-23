import 'package:go_router/go_router.dart';
import '../presentation/pages/note_list_page.dart';
import '../presentation/pages/add_note_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => NoteListPage()),
    GoRoute(path: '/add', builder: (context, state) => AddNotePage()),
  ],
);
