import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item5');
                    },
                    title: const Text("1. Scaffold Widget"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item6');
                    },
                    title: const Text("2. Colours & Fonts"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item8');
                    },
                    title: const Text("3. Images & Assets"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item9');
                    },
                    title: const Text("4. Buttons & Icons"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item10');
                    },
                    title: const Text("5. Containers, Margin & Padding"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item11');
                    },
                    title: const Text("6. Rows"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item12');
                    },
                    title: const Text("7. Columns"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item14');
                    },
                    title: const Text("8. Expended Widgets & Flex"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item16');
                    },
                    title: const Text("9. Ninja License App Project"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item17');
                    },
                    title: const Text("10. Outputting Lists of Data"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item18');
                    },
                    title: const Text("11. Custom Classes"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item19');
                    },
                    title: const Text("12. Cards"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item21');
                    },
                    title: const Text("13. Functions as Arguments"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/item24');
                    },
                    title: const Text("14. World Time App"),
                  ),
                ],
              ),
            )),
      );
    }));
  }
}
