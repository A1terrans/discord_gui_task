import 'package:flutter/material.dart';
import 'package:gui_task/screens/base_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MATERIALDISCORD',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen();
  }
}

//UnivIcon(
//        status:
//            'Online', // Comment for no indicator, Online for green, Away for yellow, anything for offline
//        image: Image(
//          image: NetworkImage(
//              'https://i.pinimg.com/236x/b7/18/0b/b7180b77f31c943b8111ffdbc19fcf98.jpg'),
//        ),
//        size: Size(64, 64),
//      ),