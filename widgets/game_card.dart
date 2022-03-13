import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'univ_icon.dart';

class GameCard extends StatelessWidget {
  bool noDisplay;

  GameCard({Key? key, this.noDisplay = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.desktop_access_disabled,
              color: firstTextColor,
            )
          ],
        ),
        Text('Origin',
            style: TextStyle(
              color: firstTextColor,
            )),
        Text('10 days ago',
            style: TextStyle(
              color: firstTextColor,
            )),
        const SizedBox(
          height: 5,
        ),
        UnivIcon(
          image: Image.network(
              'https://i.pinimg.com/564x/ce/70/9e/ce709ea00c14c59f05fda449e8fa2f16.jpg'),
          size: Size(50, 50),
          round: false,
        ),
        Text('Apex Legends',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ]),
      decoration: BoxDecoration(
        color: firstCardColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      width: 260,
      height: 160,
    );
  }
}
