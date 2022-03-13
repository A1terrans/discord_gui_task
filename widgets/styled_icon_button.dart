import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'univ_icon.dart';

class StyledIconButton extends StatelessWidget {
  IconData icon;
  Color color;
  StyledIconButton(
      {Key? key, required this.icon, this.color = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(children: [
        const SizedBox(
          height: 5,
        ),
        UnivIcon(
            image: Container(
                width: 50,
                height: 50,
                color: iconButtonColor,
                child: Icon(icon, size: 30, color: Colors.white)),
            size: Size(50, 50)),
        const SizedBox(
          height: 5,
        ),
      ]),
    );
  }
}
