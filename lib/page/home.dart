import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'profile.dart';
import 'grid.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Username', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0.2,
          actions: [
            IconButton(
              onPressed: () {
                print('button click');
              },
              icon: Icon(Icons.settings),
              color: Colors.black,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              child: profile(),
            ),
            TabBar(
                padding: EdgeInsets.all(8),
                indicatorWeight: 0.0000001,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Icon(
                    Fontisto.nav_icon_grid,
                    size: 20,
                  ),
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Ionicons.location_outline,
                    size: 30,
                  ),
                  Icon(
                    AntDesign.contacts,
                    size: 30,
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: grid(),
                ),
                Container(),
                Container(),
                Container()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
