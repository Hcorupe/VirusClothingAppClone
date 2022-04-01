import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../components/drawer_listTile.dart';
import '../models/drawer_model.dart';
import '../notifiers/drawer_notifier.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var drawer = Provider.of<DrawerNotifier>(context, listen: false); // variable to setCurrentDrawer inside switch stmt
    return Container(
      width: 250,
      color: Colors.grey,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return DrawerListTile(
            title: drawerItems[index].title,
            icon: drawerItems[index].icon,
            onClicked: () {
              print(index);
              switch (index) {
                case 0:
                  drawer.setCurrentDrawer(0);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
                case 1:
                  drawer.setCurrentDrawer(1);
                  Navigator.pushReplacementNamed(context, 'backgr');
                  break;
                case 2:
                  drawer.setCurrentDrawer(2);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
                case 3:
                //drawer.setCurrentDrawer(3);
                  Navigator.pushReplacementNamed(context, 'home');
                  break;
              }
            },
          );
        },
        itemCount: drawerItems.length,
      ),
    );
  }
}