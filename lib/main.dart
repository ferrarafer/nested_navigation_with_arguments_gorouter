import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

import 'dashboard.dart';
import 'posts.dart';
import 'section.dart';
import 'settings.dart';
import 'unknown.dart';
import 'users.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final dashboardNavigatorKey = GlobalKey<NavigatorState>();
final postsNavigatorKey = GlobalKey<NavigatorState>();

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/users',
  navigatorKey: rootNavigatorKey,
  routerNeglect: true, // ignored, there is an issue in official repository
  routes: [
    ShellRoute(
      navigatorKey: dashboardNavigatorKey,
      builder: (context, state, child) => Dashboard(child: child),
      routes: <RouteBase>[
        GoRoute(
            name: 'users',
            path: '/users',
            builder: (context, state) => const Users()),
        ShellRoute(
          navigatorKey: postsNavigatorKey,
          builder: (context, state, child) => Posts(child: child),
          routes: <RouteBase>[
            GoRoute(
                name: 'section',
                path: '/posts/:postId/:sectionId',
                builder: (context, state) {
                  String? random = state.extra as String?;
                  return SectionPage(
                    key: UniqueKey(),
                    postId: state.pathParameters['postId']!,
                    sectionId: state.pathParameters['sectionId']!,
                    random: random,
                  );
                }),
          ],
        ),
        GoRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, state) => const Settings(),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Unknown(),
);

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
