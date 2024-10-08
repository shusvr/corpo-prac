import 'dart:math';

import 'package:corporative/models.dart';
import 'package:corporative/puzzle_scaffold.dart';
import 'package:flutter/material.dart';

class AddPuzzlePage extends StatefulWidget {
  const AddPuzzlePage({super.key, required this.onAddPuzzle});

  final Function(Puzzle) onAddPuzzle;

  @override
  State<AddPuzzlePage> createState() => _AddPuzzlePageState();
}

class _AddPuzzlePageState extends State<AddPuzzlePage> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final TextEditingController _url = TextEditingController();
  final TextEditingController _complexity = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  void dispose() {
    _title.dispose();
    _price.dispose();
    _url.dispose();
    _complexity.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PuzzleScaffold(
      title: "Add new puzzle",
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var puzzle = Puzzle(
            // whatever
            id: Random().nextInt(100000),
            title: _title.text,
            price: _price.text,
            // imageUrl: _url.text,
            imageUrl:
                'https://cccstore.ru/upload/resize_cache/iblock/83d/300_300_1ae5c06962767aed139ddd921aa3386e2/83da83f8862d3c1ba866458681173f06.webp',
            complexity: int.parse(_complexity.text),
            description: _description.text,
          );
          widget.onAddPuzzle(puzzle);

          Navigator.of(context).pop();
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _title,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _price,
              decoration: const InputDecoration(hintText: "Price"),
            ),
            TextField(
              controller: _url,
              decoration: const InputDecoration(hintText: "URL"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _complexity,
              decoration: const InputDecoration(hintText: "Complexity"),
            ),
            TextField(
              controller: _description,
              decoration: const InputDecoration(hintText: "Description"),
            ),
          ],
        ),
      ),
    );
  }
}
