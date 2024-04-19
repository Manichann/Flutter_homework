import 'package:final_project/drawer.dart';
import 'package:final_project/home.dart';
import 'package:final_project/item/item10.dart';
import 'package:final_project/item/item11.dart';
import 'package:final_project/item/item12.dart';
import 'package:final_project/item/item14.dart';
import 'package:final_project/item/item16.dart';
import 'package:final_project/item/item17.dart';
import 'package:final_project/item/item18.dart';
import 'package:final_project/item/item19.dart';
import 'package:final_project/item/item21.dart';
import 'package:final_project/item/item5.dart';
import 'package:final_project/item/item6.dart';
import 'package:final_project/item/item8.dart';
import 'package:final_project/item/item9.dart';
import 'package:final_project/item/pages/choose_location.dart';
import 'package:final_project/item/pages/home.dart';
import 'package:final_project/item/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dominant Ni",
      home: const HeaderWidget(),
      initialRoute: '/',
      routes: {
        '/item5': (BuildContext ctx) => const Item5(),
        '/item6': (BuildContext ctx) => const Item6(),
        '/item8': (BuildContext ctx) => const Item8(),
        '/item9': (BuildContext ctx) => const Item9(),
        '/item10': (BuildContext ctx) => const Item10(),
        '/item11': (BuildContext ctx) => const Item11(),
        '/item12': (BuildContext ctx) => const Item12(),
        '/item14': (BuildContext ctx) => const Item14(),
        '/item16': (BuildContext ctx) => const Item16(),
        '/item17': (BuildContext ctx) => const Item17(),
        '/item18': (BuildContext ctx) => const Item18(),
        '/item19': (BuildContext ctx) => const Item19(),
        '/item21': (BuildContext ctx) => const Item21(),
        '/item24': (BuildContext ctx) => const Loading(),
        '/item24/home': (BuildContext ctx) => const HomeWidget(),
        '/item24/location': (BuildContext ctx) => const ChooseLocation(),
        },
    );
  }
}

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text("Dominant Ni"),
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
      ),
      body: const BodyWidget(),
      drawer: const DrawerWidget(),
    );
  }
}
