import 'package:flutter/material.dart';

class DrawerListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onClicked;

  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.icon,
      this.onClicked})
      : super(key: key);

  @override
  _DrawerListTileState createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClicked,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: Colors.black,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
