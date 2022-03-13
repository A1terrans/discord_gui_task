import 'package:flutter/material.dart';
import 'package:gui_task/widgets/base_widget.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 34, 37),
      body: BaseWidget(),
    );
  }
}
