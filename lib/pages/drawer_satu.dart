import 'package:flutter/material.dart';

import '../pages/drawer_dua.dart';

class DrawerPageSatu extends StatelessWidget {
  const DrawerPageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer page Satu'),
        // leading: Icon(Icons.menu)
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.red,
            alignment: Alignment.bottomLeft,
            child: const Text('Menu Pilihan',
                style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DrawerPageSatu()));
            },
            leading: const Icon(Icons.home, size: 35),
            title: const Text('Home', style: TextStyle(fontSize: 24)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DrawerPageSettings()));
            },
            leading: const Icon(Icons.settings, size: 35),
            title: const Text('Settings', style: TextStyle(fontSize: 24)),
          )
        ],
      )),
      body: const Center(
          child: Text('Drawer Page Satu', style: TextStyle(fontSize: 25))),
    );
  }
}
