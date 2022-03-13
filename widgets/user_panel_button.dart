import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'univ_icon.dart';

class UserPanelButton extends StatelessWidget {
  bool active;
  String text;
  IconData icon;
  UserPanelButton(
      {Key? key, this.active = false, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: !active ? Colors.transparent : thirdBackground,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Row(children: [
        Container(
          margin: EdgeInsets.all(5),
          child: UnivIcon(
              image: Container(
                  width: 40,
                  height: 40,
                  child: Icon(icon,
                      size: 30,
                      color: !active ? secondIntreface : Colors.white)),
              size: Size(40, 40)),
        ),
        Text(text,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: !active ? secondIntreface : Colors.white))
      ]),
    );
  }
}
