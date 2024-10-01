class Puzzle {
  Puzzle({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.complexity = 2,
  });

  final String title;
  final String description;
  final String imageUrl;
  final String price;
  final int complexity;
}

const genericDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';

// final puzzles = [
//   Puzzle(
//     title: "Gan 249 2x2x2 v2",
//     description: genericDescription,
//     imageUrl:
//         'https://cccstore.ru/upload/resize_cache/iblock/1fb/m0ys96ci7tewi78443uzkyl7r7wjy42h/300_300_18859178284a3622db54fad4e069080cc/gan_249_2x2x2_v2_tsvetnoy_plastik.webp',
//     complexity: 1,
//     price: "159.99",
//   ),
//   Puzzle(
//     title: "YJ 3x3x3 MGC v2",
//     description: genericDescription,
//     imageUrl:
//         'https://cccstore.ru/upload/resize_cache/iblock/931/300_300_18859178284a3622db54fad4e069080cc/93129bebf3206a3987ee8fdfc40cb8b9.webp',
//     complexity: 2,
//     price: "329.99",
//   ),
//   Puzzle(
//     title: "QiYi MoFangGe 4x4x4 WuQue Mini M",
//     description: genericDescription,
//     imageUrl:
//         'https://cccstore.ru/upload/resize_cache/iblock/83d/300_300_1ae5c06962767aed139ddd921aa3386e2/83da83f8862d3c1ba866458681173f06.webp',
//     complexity: 3,
//     price: "989.90",
//   ),
//   Puzzle(
//     title: "QiYi MoFangGe Megaminx QiHeng (S)",
//     description: genericDescription,
//     imageUrl:
//         "https://cccstore.ru/upload/resize_cache/iblock/645/300_300_1ae5c06962767aed139ddd921aa3386e2/64591bf8927c3c83ca000afa81dfa28c.webp",
//     price: "400",
//   )
// ];
