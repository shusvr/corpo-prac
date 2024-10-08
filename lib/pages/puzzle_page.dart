import 'package:corporative/models.dart';
import 'package:flutter/material.dart';

class PuzzlePage extends StatelessWidget {
  const PuzzlePage(
      {super.key, required this.puzzle, required this.removePuzzle});

  final Puzzle puzzle;
  final Function() removePuzzle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(puzzle.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          removePuzzle();
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.delete),
      ),
      body: Column(
        children: [
          Hero(
            tag: puzzle.imageUrl,
            child: Center(
              child: Image.network(puzzle.imageUrl),
            ),
          ),
          Text("Price: ${puzzle.price}"),
          Text("Complexity: ${puzzle.complexity}"),
          const SizedBox(height: 12),
          Text(puzzle.description),
        ],
      ),
    );
  }
}
