import 'package:corporative/models.dart';
import 'package:flutter/material.dart';

class PuzzleCard extends StatelessWidget {
  const PuzzleCard({super.key, required this.puzzle});

  final Puzzle puzzle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(
                tag: puzzle.imageUrl,
                child: Image.network(puzzle.imageUrl),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  puzzle.title,
                  style: const TextStyle(fontSize: 21),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
