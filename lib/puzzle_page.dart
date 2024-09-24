import 'package:corporative/models.dart';
import 'package:corporative/puzzle_scaffold.dart';
import 'package:flutter/material.dart';

class PuzzlePage extends StatelessWidget {
  const PuzzlePage({super.key, required this.puzzle});

  final Puzzle puzzle;

  @override
  Widget build(BuildContext context) {
    return PuzzleScaffold(
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
