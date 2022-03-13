import 'package:flutter/material.dart';
import 'package:gui_task/constants/colors.dart';
import 'package:gui_task/widgets/univ_icon.dart';
import 'go_to_tab_top.dart';
import 'library_list.dart';
import 'styled_icon_button.dart';
import 'user_card.dart';
import 'user_data.dart';
import 'user_panel_button.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: (MediaQuery.of(context).size.width / 20 * 1),
          child: Panel(),
        ),
        Container(
          width: (MediaQuery.of(context).size.width / 20 * 19),
          color: firstBackground,
          child: Home(),
        )
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 50,
              backgroundColor: firstBackground,
              bottomOpacity: 2,
              elevation: 2,
              actions: [
                GoToTab(),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 20 * 5),
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: secondBackground,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    width: 200,
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 150,
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration.collapsed(
                                  hintText: 'Filter',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondTextColor)),
                            ),
                          ),
                          Icon(Icons.search, color: secondTextColor)
                        ],
                      ),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.alternate_email,
                      color: thirdTextColor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.help_outline, color: thirdTextColor))
              ],
              title: Text('Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            body: Row(children: [
              Container(
                width: (MediaQuery.of(context).size.width / 20 * 4),
                child: UserPanelList(),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20 * 15),
                child: TabBarView(
                  children: [
                    Container(
                      child: LibraryMyGames(),
                      color: fourBackgroundColor,
                    ),
                    Container(
                      child: Icon(Icons.directions_transit),
                      color: fourBackgroundColor,
                    ),
                    Container(
                      child: Icon(Icons.directions_bike),
                      color: fourBackgroundColor,
                    ),
                  ],
                ),
              ),
            ])));
  }
}

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> data = List<int>.generate(50, (i) => i);
    return Container(
        child: Column(
      children: [
        Container(
            height: (MediaQuery.of(context).size.height - 64),
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView.builder(
                    itemCount: data.length + 2,
                    itemBuilder: (context, index) {
                      index = index - 2;
                      if (index == -2) {
                        return StyledIconButton(
                          color: firstIconColor,
                          icon: Icons.home_outlined,
                        );
                      }
                      if (index == -1) {
                        return Column(
                          children: [
                            Text(
                              '13 ONLINE',
                              style:
                                  TextStyle(fontSize: 10, color: fourTextColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        );
                      }
                      return Container(
                        width: 64,
                        height: 64,
                        child: Center(child: UnivIconPlaceholder()),
                      );
                    }))),
        Container(
          width: 64,
          decoration: BoxDecoration(
            color: fourBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 64,
          child: StyledIconButton(
            icon: Icons.add,
          ),
        )
      ],
    ));
  }
}

class UserPanelList extends StatelessWidget {
  const UserPanelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> data = List<int>.generate(50, (i) => i);
    return Container(
        child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ListParameters(),
        Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'DIRECT MESSAGES',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: fourTextColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
        Container(
            height: (MediaQuery.of(context).size.height - 355),
            child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return UserCard();
                        }),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: FloatingActionButton(
                        backgroundColor: iconButtonColor,
                        onPressed: () {},
                        child: const Icon(Icons.search),
                      ),
                    ),
                  ],
                ))),
        Container(
          width: MediaQuery.of(context).size.width / 20 * 4,
          decoration: BoxDecoration(color: firstBackground, boxShadow: [
            BoxShadow(
              offset: Offset(3.0, 0.0),
              color: Colors.black,
              blurRadius: 3.0,
            ),
          ]),
          height: 64,
          child: UserData(),
        )
      ],
    ));
  }
}

class ListParameters extends StatefulWidget {
  int active = 1;
  ListParameters({Key? key}) : super(key: key);

  @override
  State<ListParameters> createState() => _ListParametersState();
}

class _ListParametersState extends State<ListParameters> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.active = 0;
            });
          },
          child: UserPanelButton(
            active: widget.active == 0 ? true : false,
            text: 'Activity',
            icon: Icons.videogame_asset_outlined,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.active = 1;
            });
          },
          child: UserPanelButton(
            active: widget.active == 1 ? true : false,
            text: 'Library',
            icon: Icons.local_library_outlined,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.active = 2;
            });
          },
          child: UserPanelButton(
            active: widget.active == 2 ? true : false,
            text: 'Store',
            icon: Icons.store_outlined,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.active = 3;
            });
          },
          child: UserPanelButton(
            active: widget.active == 3 ? true : false,
            text: 'Friends',
            icon: Icons.people_outline,
          ),
        )
      ],
    );
  }
}
