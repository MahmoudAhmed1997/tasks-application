import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_list_app/home_page.dart';
import 'package:task_list_app/pages/projects/_view/projects_page.dart';
import 'package:task_list_app/pages/teams/_view/teams_page.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  void main() => runApp(  MyApp());

  /// The route configuration.
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return  HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'tasks',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },

          ),
          GoRoute(
            path: 'teams',
            builder: (BuildContext context, GoRouterState state) {
              return Material(child: const TeamsPage());
            },
          ),
          GoRoute(
            path: 'projects',
            builder: (BuildContext context, GoRouterState state) {
              return Material(child: const ProjectsPage());
            },
          ),

        ],
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Task list App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),

      ),
    );
  }
}
