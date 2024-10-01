import 'package:corporative/add_puzzle_page.dart';
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
      home: const PuzzleListPage(),
    );
  }
}

class _PuzzleListPageState extends State<PuzzleListPage> {
  List<Puzzle> puzzles = [
    Puzzle(
      title: "Gan 249 2x2x2 v2",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/1fb/m0ys96ci7tewi78443uzkyl7r7wjy42h/300_300_18859178284a3622db54fad4e069080cc/gan_249_2x2x2_v2_tsvetnoy_plastik.webp',
      complexity: 1,
      price: "159.99",
    ),
    Puzzle(
      title: "YJ 3x3x3 MGC v2",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/931/300_300_18859178284a3622db54fad4e069080cc/93129bebf3206a3987ee8fdfc40cb8b9.webp',
      complexity: 2,
      price: "329.99",
    ),
    Puzzle(
      title: "QiYi MoFangGe 4x4x4 WuQue Mini M",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/83d/300_300_1ae5c06962767aed139ddd921aa3386e2/83da83f8862d3c1ba866458681173f06.webp',
      complexity: 3,
      price: "989.90",
    ),
    Puzzle(
      title: "QiYi MoFangGe Megaminx QiHeng (S)",
      description: genericDescription,
      imageUrl:
          "https://cccstore.ru/upload/resize_cache/iblock/645/300_300_1ae5c06962767aed139ddd921aa3386e2/64591bf8927c3c83ca000afa81dfa28c.webp",
      price: "400",
    )
  ];

  void _addPuzzle(Puzzle puzzle) {
    setState(() => puzzles.add(puzzle));
  }

  void _removePuzzle(int index) {
    setState(() => puzzles.removeAt(index));
  }

  @override
  Widget build(BuildContext context) {
    return PuzzleScaffold(
      body: ListView.builder(
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
            onDeletePuzzle: () => _removePuzzle(index),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddPuzzlePage(
              onAddPuzzle: _addPuzzle,
            ),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class PuzzleListPage extends StatefulWidget {
  const PuzzleListPage({super.key});

  @override
  State<StatefulWidget> createState() => _PuzzleListPageState();
}
