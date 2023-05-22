import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Unknown extends StatelessWidget {
  const Unknown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("404"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed('users'),
          child: const Text("Go to Users"),
        ),
      ),
    );
  }
}
