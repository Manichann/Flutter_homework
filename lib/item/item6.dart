import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item6 extends StatelessWidget {
  const Item6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Colours & Fonts',
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
            "ວຽກບ້ານ 6",
            style: TextStyle(fontSize: 20),
          ),
          Text("Colours & Fonts", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 100,
          ),
          Text(
            "COLOURS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Playball",
              letterSpacing: 2.0,
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "AND",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Playball",
              letterSpacing: 2.0,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("FONTS",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Playball",
                letterSpacing: 2.0,
                color: Colors.pink,
              )),
          SizedBox(
            height: 20,
          ),
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
