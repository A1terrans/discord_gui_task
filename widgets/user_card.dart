import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

import 'univ_icon.dart';

class UserCard extends StatelessWidget {
  String name;
  String status;
  UserCard(
      {Key? key, this.name = 'Placeholder', this.status = 'Second Placeholder'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            child: Center(child: UnivIconPlaceholder()),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: firstTextColor, fontWeight: FontWeight.bold),
              ),
              Text(
                status,
                style: TextStyle(
                    fontSize: 10,
                    color: firstTextColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
