import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'univ_icon.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          width: 44,
          height: 44,
          child: Center(child: UnivIconPlaceholder()),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'USERNAME',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            Text(
              'ID',
              style: TextStyle(
                  fontSize: 10,
                  color: firstTextColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        SizedBox(
          width: 30,
          child: IconButton(
              iconSize: 20,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(
                Icons.mic_none,
                color: firstTextColor,
              )),
        ),
        SizedBox(
          width: 30,
          child: IconButton(
              iconSize: 20,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(
                Icons.volume_up,
                color: firstTextColor,
              )),
        ),
        SizedBox(
          width: 30,
          child: IconButton(
              iconSize: 20,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: firstTextColor,
              )),
        ),
      ]),
    );
  }
}
