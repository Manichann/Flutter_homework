import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item5 extends StatelessWidget {
  const Item5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Scaffold Widget',
        ),
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
      ),
      body: const Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "ວຽກບ້ານ 5",
            style: TextStyle(fontSize: 20),
          ),
          Text("Scaffold Widget", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 100,
          ),
          Text("Hellooooo!!")
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
