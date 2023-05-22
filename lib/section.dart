import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SectionPage extends StatefulWidget {
  final String postId;
  final String sectionId;
  final String? random;
  const SectionPage({
    super.key,
    required this.postId,
    required this.sectionId,
    this.random,
  });

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Post:${widget.postId}, Section:${widget.sectionId} Random:${widget.random}',
              style: const TextStyle(color: Colors.black, fontSize: 60),
            ),
            MaterialButton(
              child: const Text('BACK'),
              onPressed: () {
                if (!context.canPop()) return;

                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
