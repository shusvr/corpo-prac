import 'package:corporative/models.dart';
import 'package:flutter/material.dart';

class PuzzleCard extends StatelessWidget {
  const PuzzleCard({
    super.key,
    required this.puzzle,
    required this.onDeletePuzzle,
  });

  final Puzzle puzzle;
  final Function() onDeletePuzzle;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    puzzle.title,
                    style: const TextStyle(
                        overflow: TextOverflow.clip, fontSize: 21),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red[500]),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Remove the puzzle'),
                            content: const Text(
                                'Are you sure you want to remove this puzzle'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  onDeletePuzzle();
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Remove'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
