import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final String assetPath;

  const ImageList({Key? key, required this.assetPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        height: 450.0,
      ),
    );
  }
}
