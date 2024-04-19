import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item12 extends StatefulWidget {
  const Item12({super.key});

  @override
  State<Item12> createState() => _Item12State();
}

class _Item12State extends State<Item12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Coloumns',
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
            "ວຽກບ້ານ 12",
            style: TextStyle(fontSize: 20),
          ),
          const Text("Columns", style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                children: [Text("hello,"), Text(" world")],
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text("one"),
              ),
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text("two"),
              ),
              Container(
                padding: EdgeInsets.all(40),
                color: Colors.amber,
                child: Text("three"),
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
