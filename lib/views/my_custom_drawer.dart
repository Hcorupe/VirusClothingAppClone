import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../components/drawer_listTile.dart';
import '../models/drawer_model.dart';
import '../notifiers/drawer_notifier.dart';

class MyCustomDrawer extends StatefulWidget {
  const MyCustomDrawer({Key? key}) : super(key: key);

  @override
  _MyCustomDrawerState createState() => _MyCustomDrawerState();
}

int selectedIndex = 0;

class _MyCustomDrawerState extends State<MyCustomDrawer> {
  @override
  void initState() {
    DrawerNotifier drawerNotifier =
        Provider.of<DrawerNotifier>(context, listen: false);
    selectedIndex = drawerNotifier.getCurrentDrawer;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Provider.of<DrawerNotifier>(context,
        listen: false); // variable to setCurrentDrawer inside switch stmt
    return Container(
      width: 250,
      color: Colors.grey,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DrawerListTile(
            onClicked: () {
              switch (index) {
                case 0:
                  drawer.setCurrentDrawer(0);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
                case 1:
                  drawer.setCurrentDrawer(1);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
                case 2:
                  drawer.setCurrentDrawer(2);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
                case 3:
                  drawer.setCurrentDrawer(3);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
              }
            },
            title: drawerItems[index].title,
            isSelected: selectedIndex == index,
            icon: drawerItems[index].icon,
          );
        },
        itemCount: drawerItems.length,
      ),
    );
  }
}
