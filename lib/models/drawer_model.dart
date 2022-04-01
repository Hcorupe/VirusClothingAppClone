import 'package:flutter/material.dart';

class DrawerModel {
  final String title;
  final IconData icon;
  final VoidCallback? onClicked;

  DrawerModel({required this.title, required this.icon, this.onClicked});
}

List<DrawerModel> drawerItems = [
  DrawerModel(
    title: 'Home',
    icon: Icons.home_outlined,
  ),
  DrawerModel(title: 'Shop', icon: Icons.loyalty_outlined),
  DrawerModel(title: 'Cart', icon: Icons.shopping_cart_outlined),
  DrawerModel(title: 'Orders', icon: Icons.book),
];
