import 'package:flutter/material.dart';

import '../constants/colors.dart';

class GoToTab extends StatefulWidget {
  bool current = false;
  GoToTab({Key? key}) : super(key: key);

  @override
  State<GoToTab> createState() => _GoToTabState();
}

class _GoToTabState extends State<GoToTab> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              DefaultTabController.of(context)!.animateTo(0);
            });
          },
          child: ButtonsStylized(
              i: 0,
              text: 'My Games',
              current: (DefaultTabController.of(context)!.index == 0
                  ? true
                  : false)),
        ),
        InkWell(
          onTap: () {
            setState(() {
              DefaultTabController.of(context)!.animateTo(1);
            });
          },
          child: ButtonsStylized(
              i: 1,
              text: 'Nitro Games',
              current: (DefaultTabController.of(context)!.index == 1
                  ? true
                  : false)),
        ),
        InkWell(
          onTap: () {
            setState(() {
              DefaultTabController.of(context)!.animateTo(2);
            });
          },
          child: ButtonsStylized(
              i: 2,
              text: 'Gift Inventory',
              current: (DefaultTabController.of(context)!.index == 2
                  ? true
                  : false)),
        ),
      ],
    );
  }
}

class ButtonsStylized extends StatelessWidget {
  int i;
  String text;
  bool current = false;
  ButtonsStylized(
      {Key? key, required this.i, required this.text, required this.current})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 3,
                  color: current ? Colors.white : Colors.transparent))),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: fiveTextColor),
        ),
      ),
    );
  }
}
