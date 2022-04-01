import 'package:flutter/material.dart';

class DrawerListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback? onClicked;

  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.icon,
      this.onClicked,
      this.isSelected = false})
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
          color: (widget.isSelected)
              ? Colors.transparent.withOpacity(1)
              : Colors.transparent,
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: widget.isSelected ? Colors.grey[300] : Colors.black,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: (widget.isSelected) ? Colors.black : Colors.black,
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
