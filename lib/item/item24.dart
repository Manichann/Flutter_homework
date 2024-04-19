import 'package:final_project/item/pages/choose_location.dart';
import 'package:final_project/item/pages/home.dart';
import 'package:final_project/item/pages/loading.dart';
import 'package:flutter/material.dart';

class Item24 extends StatefulWidget {
  const Item24({super.key});

  @override
  State<Item24> createState() => _Item24State();
}

class _Item24State extends State<Item24> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => Loading(),
        '/home':(context) => HomeWidget(),
        '/location':(context) => ChooseLocation()
      },
    );
  }
}
