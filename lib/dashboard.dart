import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  final Widget child;
  const Dashboard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            MaterialButton(
              child: const Text('Users'),
              onPressed: () {
                context.goNamed('users');
              },
            ),
            MaterialButton(
              child: const Text('Posts'),
              onPressed: () {
                context.goNamed(
                  'section',
                  pathParameters: {
                    'postId': 'flutter-web',
                    'sectionId': 'section-1',
                  },
                  extra: '00',
                );
              },
            ),
            MaterialButton(
              child: const Text('Settings'),
              onPressed: () {
                context.goNamed('settings');
              },
            ),
          ],
        ),
        Expanded(child: child),
      ],
    );
  }
}
