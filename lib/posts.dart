import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Posts extends StatelessWidget {
  final Widget child;
  const Posts({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final r = Random();

    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              MaterialButton(
                child: const Text('Section 1'),
                onPressed: () {
                  Router.neglect(
                    context,
                    () => context.goNamed(
                      'section',
                      pathParameters: {
                        'postId': 'flutter-web',
                        'sectionId': 'section-1',
                      },
                      extra: r.nextInt(100).toString(),
                    ),
                  );
                },
              ),
              MaterialButton(
                child: const Text('Section 2'),
                onPressed: () {
                  Router.neglect(
                    context,
                    () => context.goNamed(
                      'section',
                      pathParameters: {
                        'postId': 'flutter-web',
                        'sectionId': 'section-2',
                      },
                      extra: r.nextInt(100).toString(),
                    ),
                  );
                },
              ),
              MaterialButton(
                child: const Text('Section 3'),
                onPressed: () {
                  Router.neglect(
                    context,
                    () => context.goNamed(
                      'section',
                      pathParameters: {
                        'postId': 'flutter-web',
                        'sectionId': 'section-3',
                      },
                      extra: r.nextInt(100).toString(),
                    ),
                  );
                },
              ),
              MaterialButton(
                child: const Text('Section 4'),
                onPressed: () {
                  Router.neglect(
                    context,
                    () => context.goNamed(
                      'section',
                      pathParameters: {
                        'postId': 'flutter-web',
                        'sectionId': 'section-4',
                      },
                      extra: r.nextInt(100).toString(),
                    ),
                  );
                },
              ),
              MaterialButton(
                child: const Text('Section 5'),
                onPressed: () {
                  Router.neglect(
                    context,
                    () => context.goNamed(
                      'section',
                      pathParameters: {
                        'postId': 'flutter-web',
                        'sectionId': 'section-5',
                      },
                      extra: r.nextInt(100).toString(),
                    ),
                  );
                },
              ),
            ],
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
