import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item14 extends StatefulWidget {
  const Item14({super.key});

  @override
  State<Item14> createState() => _Item14State();
}

class _Item14State extends State<Item14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Expended Widgets & Flex',
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
            "ວຽກບ້ານ 14",
            style: TextStyle(fontSize: 20),
          ),
          const Text("Expended Widgets & Flex", style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset("kuromi.jpg"),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.cyan,
                  child: const Text("1"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.pinkAccent,
                  child: const Text("2"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  color: Colors.amber,
                  child: const Text("3"),
                ),
              ),
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
