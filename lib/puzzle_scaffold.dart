import 'package:flutter/material.dart';

class PuzzleScaffold extends StatelessWidget {
  const PuzzleScaffold(
      {super.key, required this.body, this.title, this.floatingActionButton});

  final Widget body;
  final String? title;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title != null ? title! : "Puzzle shop"),
      ),
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Puzzles"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
        ],
      ),
    );
  }
}
