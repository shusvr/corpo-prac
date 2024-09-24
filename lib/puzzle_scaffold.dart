import 'package:flutter/material.dart';

class PuzzleScaffold extends StatelessWidget {
  const PuzzleScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Puzzle shop"),
      ),
      body: body,
    );
  }
}
