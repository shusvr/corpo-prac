import 'package:corporative/models.dart';
import 'package:corporative/puzzle_card.dart';
import 'package:corporative/puzzle_page.dart';
import 'package:corporative/puzzle_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puzzle shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PuzzleScaffold(
        body: PuzzleListPage(),
      ),
    );
  }
}

class PuzzleListPage extends StatelessWidget {
  const PuzzleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        ),
      ),
    );
  }
}
