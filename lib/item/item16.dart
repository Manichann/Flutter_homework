import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item16 extends StatefulWidget {
  const Item16({super.key});

  @override
  State<Item16> createState() => _Item16State();
}

class _Item16State extends State<Item16> {

  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card',
        ),
        backgroundColor: Colors.amber[500],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        backgroundColor: Colors.amber[500],
        child: const Text('+', style: TextStyle(fontSize: 24),),),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("pom.jpg"),radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey[800],
              ),
              const Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Chun-Li",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$ninjalevel",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "chun.li@thenetninja.co.uk",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 28,
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
