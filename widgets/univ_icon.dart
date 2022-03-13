import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';

class UnivIcon extends StatelessWidget {
  String status;
  Widget image;
  bool round;
  Size size;
  UnivIcon({
    Key? key,
    required this.image,
    required this.size,
    this.status = 'NoData',
    this.round = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double radius = 5;
    if (round) {
      radius = 40;
    }
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(alignment: Alignment.topRight, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: image,
        ),
        Status(status: status, size: size),
        GestureDetector(
          onTap: () {},
        )
      ]),
    );
  }
}

class Status extends StatelessWidget {
  String status;
  Size size;
  Status({Key? key, required this.status, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == 'NoData') {
      return Container();
    } else if (status == 'Online') {
      return Container(
        width: size.width / 4.5,
        height: size.height / 4.5,
        decoration: BoxDecoration(
          color: statusColors[2],
          borderRadius: BorderRadius.circular(40),
        ),
      );
    } else {
      return Container(
        width: size.width / 4.5,
        height: size.width / 4.5,
        decoration: BoxDecoration(
          color: status == 'Away' ? statusColors[1] : statusColors[0],
          borderRadius: BorderRadius.circular(40),
        ),
      );
    }
  }
}

class UnivIconPlaceholder extends StatelessWidget {
  const UnivIconPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnivIcon(
      status:
          'Online', // Comment for no indicator, Online for green, Away for yellow, anything for offline
      image: Image(
        image: NetworkImage(
            'https://mmacapitalmanagement.com/wp-content/uploads/2016/11/tux-batman.png'),
      ),
      size: Size(50, 50),
    );
  }
}
