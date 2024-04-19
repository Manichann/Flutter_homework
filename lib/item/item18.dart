import 'package:final_project/quote.dart';
import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item18 extends StatefulWidget {
  const Item18({super.key});

  @override
  State<Item18> createState() => _Item18State();
}

class _Item18State extends State<Item18> {

  List<Quote> quetes = [
    Quote(text: "Be yourshelf; every one else is already taken", auther: 'Osca Wilde'),
    Quote(text: "I have nothing to declare except my genius", auther: 'Osca Wilde'),
    Quote(text: "he truth is rarely pure and never simple", auther: 'Osca Wilde'),
  ];

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
        children: quetes.map((quote) => Text('${quote.text} - ${quote.auther}')).toList(),
      )
    );
  }
}
