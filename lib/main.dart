import 'package:corporative/models.dart';
import 'package:corporative/pages/add_puzzle_page.dart';
import 'package:corporative/pages/all_puzzles_page.dart';
import 'package:corporative/pages/favourites_page.dart';
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
      id: 1,
      title: "Gan 249 2x2x2 v2",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/1fb/m0ys96ci7tewi78443uzkyl7r7wjy42h/300_300_18859178284a3622db54fad4e069080cc/gan_249_2x2x2_v2_tsvetnoy_plastik.webp',
      complexity: 1,
      price: "159.99",
    ),
    Puzzle(
      id: 2,
      title: "YJ 3x3x3 MGC v2",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/931/300_300_18859178284a3622db54fad4e069080cc/93129bebf3206a3987ee8fdfc40cb8b9.webp',
      complexity: 2,
      price: "329.99",
    ),
    Puzzle(
      id: 3,
      title: "QiYi MoFangGe 4x4x4 WuQue Mini M",
      description: genericDescription,
      imageUrl:
          'https://cccstore.ru/upload/resize_cache/iblock/83d/300_300_1ae5c06962767aed139ddd921aa3386e2/83da83f8862d3c1ba866458681173f06.webp',
      complexity: 3,
      price: "989.90",
    ),
    Puzzle(
      id: 4,
      title: "QiYi MoFangGe Megaminx QiHeng (S)",
      description: genericDescription,
      imageUrl:
          "https://cccstore.ru/upload/resize_cache/iblock/645/300_300_1ae5c06962767aed139ddd921aa3386e2/64591bf8927c3c83ca000afa81dfa28c.webp",
      price: "400",
    )
  ];

  int page = 0;
  Set<int> favourites = {};

  void _addPuzzle(Puzzle puzzle) {
    setState(() => puzzles.add(puzzle));
  }

  void _removePuzzle(int id) {
    setState(() => puzzles.removeWhere((el) => el.id == id));
  }

  void _toggleFavourite(int favId) {
    if (!favourites.contains(favId)) {
      setState(() => favourites.add(favId));
    } else {
      setState(() => favourites.remove(favId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Puzzle shop"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) => setState(() => page = idx),
        currentIndex: page,
        items: const [
          BottomNavigationBarItem(label: "Puzzles", icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              label: "Favourites", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
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
      body: page == 0
          ? AllPuzzlesPage(
              puzzles: puzzles,
              isFavourite: (idx) => favourites.contains(idx),
              toggleFavourite: _toggleFavourite,
              removePuzzle: _removePuzzle,
            )
          : page == 1
              ? FavouritesPage(
                  favourites: puzzles
                      .where((el) => favourites.contains(el.id))
                      .toList(growable: false),
                  toggleFavourite: _toggleFavourite,
                )
              : null,
    );
  }
}

class PuzzleListPage extends StatefulWidget {
  const PuzzleListPage({super.key});

  @override
  State<StatefulWidget> createState() => _PuzzleListPageState();
}
