import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';
import 'package:final_project/quote_card.dart';
import 'package:final_project/quote.dart';

class Item21 extends StatefulWidget {
  const Item21({super.key});

  @override
  State<Item21> createState() => _Item21State();
}

class _Item21State extends State<Item21> {

  List<Quote> quetes = [
    Quote(
        text: "Be yourshelf; every one else is already taken",
        auther: 'Osca Wilde'),
    Quote(
        text: "I have nothing to declare except my genius",
        auther: 'Osca Wilde'),
    Quote(
        text: "he truth is rarely pure and never simple", auther: 'Osca Wilde'),
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
          children: quetes
              .map((quote) => QuoteCard(
                quote: quote, 
                delete: () {
                  setState(() {
                    quetes.remove(quote);
                  });
                })).toList()
        )
    );
  }
}
