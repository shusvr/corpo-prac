import 'package:corporative/models.dart';
import 'package:corporative/puzzle_card.dart';
import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({
    super.key,
    required this.favourites,
    required this.toggleFavourite,
  });

  final List<Puzzle> favourites;
  final Function(int) toggleFavourite;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: favourites.length,
      itemBuilder: (context, index) => PuzzleCard(
        puzzle: favourites[index],
        isFavourite: true,
        onFavourited: () => toggleFavourite(favourites[index].id),
      ),
    );
  }
}
