import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'game_card.dart';

class LibraryMyGames extends StatefulWidget {
  const LibraryMyGames({Key? key}) : super(key: key);

  @override
  State<LibraryMyGames> createState() => _LibraryMyGamesState();
}

class _LibraryMyGamesState extends State<LibraryMyGames> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          color: firstCardColor,
          child: Row(
            children: const [
              SizedBox(
                width: 30,
              ),
              Text(
                'NAME',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: fourTextColor),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'PLATFORM',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: fourTextColor),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'LAST PLAYED',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: fourTextColor),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
            height: (MediaQuery.of(context).size.height - 90),
            child: GridView.count(
              controller: controller,
              crossAxisCount: 3,
              childAspectRatio: (290 / 160),
              children: List.generate(50, (index) {
                return Center(child: GameCard());
              }),
            ))
      ],
    );
  }
}
