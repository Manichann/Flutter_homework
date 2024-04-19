import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item10 extends StatefulWidget {
  const Item10({super.key});

  @override
  State<Item10> createState() => _Item10State();
}

class _Item10State extends State<Item10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Containers, Margin & Padding',
        ),
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "ວຽກບ້ານ 10",
            style: TextStyle(fontSize: 20),
          ),
          const Text("Containers, Margin & Padding",
              style: TextStyle(fontSize: 15)),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            margin: const EdgeInsets.all(30),
            color: Colors.pinkAccent,
            child: const Text(
                "a container with 10-20-30-40 padding and 30 margin"),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
        child: const Text("click"),
      ),
    );
  }
}
