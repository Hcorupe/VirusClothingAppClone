

import 'package:flutter/cupertino.dart';

import 'Image_wiget.dart';

ListView homeComponents() {
  String image1 = 'assets/images/sock 1.png';
  String image2 = 'assets/images/tech 1.png';
  String image3 = 'assets/images/virus.png';
  return ListView(
    //padding: const EdgeInsets.symmetric(horizontal: 16),
    children: [
      ImageList(assetPath: image1),
      ImageList(assetPath: image2),
      ImageList(assetPath: image3),
    ].map((e) =>
        Padding(padding: const EdgeInsets.symmetric(vertical: 0),
          child: e,
        )).toList(),
  );
}

ListView mensComponents() {
  String image1 = 'assets/images/sock 1.png';
  String image2 = 'assets/images/tech 1.png';
  String image3 = 'assets/images/virus.png';
  String image4 = 'assets/images/virus2.jpeg';
  String image5 = 'assets/images/shorts 1.png';
  return ListView(
    //padding: const EdgeInsets.symmetric(horizontal: 16),
    children: [
      ImageList(assetPath: image4),
      ImageList(assetPath: image2),
      ImageList(assetPath: image5),

    ].map((e) =>
        Padding(padding: const EdgeInsets.symmetric(vertical: 0),
          child: e,
        )).toList(),
  );
}

ListView womansComponents() {
  String image1 = 'assets/images/sock 1.png';
  String image2 = 'assets/images/tech 1.png';
  String image3 = 'assets/images/virus.png';
  String image4 = 'assets/images/virus2.jpeg';
  String image5 = 'assets/images/shorts 1.png';
  return ListView(
    //padding: const EdgeInsets.symmetric(horizontal: 16),
    children: [
      ImageList(assetPath: image2),
      ImageList(assetPath: image5),

    ].map((e) =>
        Padding(padding: const EdgeInsets.symmetric(vertical: 0),
          child: e,
        )).toList(),
  );
}

ListView lookBookComponents() {
  String image1 = 'assets/images/sock 1.png';
  String image2 = 'assets/images/tech 1.png';
  String image3 = 'assets/images/virus.png';
  String image4 = 'assets/images/virus2.jpeg';
  String image5 = 'assets/images/shorts 1.png';
  return ListView(
    //padding: const EdgeInsets.symmetric(horizontal: 16),
    children: [
      ImageList(assetPath: image1),
      ImageList(assetPath: image1),

    ].map((e) =>
        Padding(padding: const EdgeInsets.symmetric(vertical: 0),
          child: e,
        )).toList(),
  );
}