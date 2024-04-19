import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item9 extends StatelessWidget {
  const Item9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Buttons & Icons',
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
              "ວຽກບ້ານ 9",
              style: TextStyle(fontSize: 20),
            ),
            const Text("Buttons & Icons", style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 100,
            ),
            const Icon(
              Icons.airport_shuttle,
              color: Colors.lightBlue,
              size: 50,
            ),
            const Text("airport_shuttle icon"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print("you clicked me");
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
              child: const Text("click me"),
            ),
            const Text("elevated button"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail),
              label: const Text("mail me"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
            const Text("button with icon"),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                print("you clicked me");
              },
              icon: const Icon(Icons.alternate_email),
              style: IconButton.styleFrom(backgroundColor: Colors.amber),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 120, 73, 3),
        child: const Text("click"),
      ),
    );
  }
}
