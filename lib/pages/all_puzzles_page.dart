import 'package:corporative/models.dart';
import 'package:corporative/puzzle_card.dart';
import 'package:corporative/puzzle_page.dart';
import 'package:flutter/material.dart';

class AllPuzzlesPage extends StatelessWidget {
  const AllPuzzlesPage({
    super.key,
    required this.puzzles,
    required this.isFavourite,
    required this.toggleFavourite,
  });

  final List<Puzzle> puzzles;
  final bool Function(int) isFavourite;
  final Function(int) toggleFavourite;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: puzzles.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PuzzlePage(
                puzzle: puzzles[index],
              ),
            ),
          );
        },
        child: PuzzleCard(
          puzzle: puzzles[index],
          isFavourite: isFavourite(puzzles[index].id),
          onFavourited: () => toggleFavourite(puzzles[index].id),
        ),
      ),
    );
  }
}
