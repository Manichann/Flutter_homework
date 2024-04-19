import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item17 extends StatefulWidget {
  const Item17({super.key});

  @override
  State<Item17> createState() => _Item17State();
}

class _Item17State extends State<Item17> {
  List<String> quetes = [
    "Be yourshelf; every one else is already taken",
    "I have nothing to declare except my genius",
    "The truth is rarely pure and never simple"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Awesome Quetes',
        ),
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
      ),
      body: Column(
        children: quetes.map((quote) => Text(quote)).toList(),
      )
    );
  }
}
