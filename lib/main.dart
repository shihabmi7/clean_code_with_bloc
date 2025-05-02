import 'package:clean_code_with_bloc/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'application/di/app_bloc_providers.dart';

void main() {

  runApp(MultiBlocProvider(providers: appBlocProviders,
      child: MyApp(router: appRouter)));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
