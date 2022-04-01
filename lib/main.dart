import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virusclothingappclone/views/backgr.dart';
import 'package:virusclothingappclone/views/cart.dart';
import 'package:virusclothingappclone/views/home.dart';

import 'notifiers/drawer_notifier.dart';


void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => DrawerNotifier())],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Home(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'cart': (context) => const Cart(),
        'backgr': (context) => const BackGr(),
      },
    );
  }
}
