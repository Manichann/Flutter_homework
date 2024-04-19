import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item11 extends StatefulWidget {
  const Item11({super.key});

  @override
  State<Item11> createState() => _Item11State();
}

class _Item11State extends State<Item11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Rows',
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
            "ວຽກບ້ານ 11",
            style: TextStyle(fontSize: 20),
          ),
          const Text("Rows", style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Hello World"),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text("Click me"),
              ),
              Container(
                color: Colors.cyan,
                padding: const EdgeInsets.all(30),
                child: const Text("Inside Container"),
              )
            ],
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
