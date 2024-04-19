import 'package:final_project/drawer.dart';
import 'package:final_project/quote.dart';
import 'package:flutter/material.dart';

class Item19 extends StatefulWidget {
  const Item19({super.key});

  @override
  State<Item19> createState() => _Item19State();
}

class _Item19State extends State<Item19> {
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

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text, style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6,),
            Text(quote.auther, style: TextStyle(fontSize: 14, color: Colors.grey[800]),)
          ],
        ),
      ),
    );
  }

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
              .map((quote) => quoteTemplate(quote)).toList()
        )
      );
  }
}
