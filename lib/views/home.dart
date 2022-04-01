import 'package:flutter/material.dart';
import '../components/tab_bar_content_builder.dart';
import 'my_custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        drawer: const MyCustomDrawer(),
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'Virus',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.admin_panel_settings,
              color: Colors.black,
            )
          ],
          bottom: const TabBar(
              labelPadding: EdgeInsets.only(left: 0, right: 0),
              indicatorPadding: EdgeInsets.only(left: 20.0, right: 20.0),
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: ('Home')),
                Tab(
                  text: ('Mens')),
                Tab(
                  text: ('Womans')),
                Tab(
                  text: ('LookBook')),
              ]),
        ),
        body: TabBarView(
          children: [
            homeComponents(),
            mensComponents(),
            womansComponents(),
            lookBookComponents(),
          ],
        ),
      ),
    );
  }
}
