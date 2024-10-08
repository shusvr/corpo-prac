import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem ipsum dolor",
            style: TextStyle(fontSize: 21),
          ),
          Text(
            "ЭФБО-03-22",
            style: TextStyle(fontSize: 21),
          ),
          Text(
            "+79991234567",
            style: TextStyle(fontSize: 21),
          ),
          Text(
            "win@stuff.com",
            style: TextStyle(fontSize: 21),
          ),
        ],
      ),
    );
  }
}
