import 'package:final_project/drawer.dart';
import 'package:flutter/material.dart';

class Item8 extends StatelessWidget {
  const Item8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text(
          'Images & Assets',
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
            "ວຽກບ້ານ 8",
            style: TextStyle(fontSize: 20),
          ),
          Text("Images & Assets", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 30,
          ),
          Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.c12d3a334c72eacb5ff6458922616db6?rik=9BpgICGUXzaELg&riu=http%3a%2f%2fcdn.shopify.com%2fs%2ffiles%2f1%2f0107%2f5124%2f6372%2fcollections%2fScreen_Shot_2019-09-24_at_10.12.39_PM_1200x1200.png%3fv%3d1569551740&ehk=R6VAqVyMbLOAlPfSlOS8zOFCKzyFWOO%2btw%2bQTdpc99E%3d&risl=&pid=ImgRaw&r=0'),
            height: 180,
          ),
          Text("picture 1: network image"),
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage('kuromi.jpg')),
          Text("picture 2: asset Image")
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
