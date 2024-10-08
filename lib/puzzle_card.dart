import 'package:corporative/models.dart';
import 'package:flutter/material.dart';

class PuzzleCard extends StatelessWidget {
  const PuzzleCard({
    super.key,
    required this.puzzle,
    required this.onFavourited,
    required this.isFavourite,
  });

  final Puzzle puzzle;
  final bool isFavourite;
  final VoidCallback onFavourited;

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
              Text(
                puzzle.title,
                maxLines: 1,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 21,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    onPressed: onFavourited,
                    icon: Icon(
                      isFavourite ? Icons.favorite : Icons.favorite_border,
                    ),
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.zero),
                        iconColor: isFavourite
                            ? WidgetStateProperty.all(Colors.red)
                            : null),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
