import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Tab> myTab = [
    const Tab(text: 'Tab 2', icon: Icon(Icons.add_a_photo)),
    const Tab(icon: Icon(Icons.ac_unit_outlined)),
    const Tab(text: 'Tab 3'),
    const Tab(
      child: Text('data'),
    ),
  ];
  // DefaultTabController myController =
  //     DefaultTabController(length: 3, child: null);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 2,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Appbar'),
            // bottom: const PreferredSize(
            //     preferredSize: Size.fromHeight(200), child: Text('Bottom')),

            // bottom: const PreferredSize(
            //   preferredSize: Size.fromHeight(50),
            //   child: DefaultTabController(
            //     length: 3,
            //     child: TabBar(tabs: [
            //       Tab(text: 'Tab 1'),
            //       Tab(text: 'Tab 2'),
            //       Tab(text: 'Tab 3'),
            //     ]),
            //   ),
            // ),

            // bottom: const TabBar(tabs: [
            //   Tab(text: 'Tab 1', icon: Icon(Icons.add_a_photo)),
            //   Tab(icon: Icon(Icons.ac_unit_outlined)),
            //   Tab(text: 'Tab 3'),
            //   Tab(
            //     child: Text('data'),
            //   ),
            // ]),

            bottom: TabBar(
                labelColor: Colors.yellowAccent,
                unselectedLabelColor: Colors.white,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.normal),
                // indicatorColor: Colors.black,
                // indicatorWeight: 5,
                // indicatorPadding: EdgeInsets.all(10),
                indicator: const BoxDecoration(
                    color: Colors.redAccent,
                    // borderRadius: BorderRadius.circular(50),
                    border: Border(
                        top: BorderSide(
                      color: Colors.black,
                      width: 5,
                    ))),
                tabs: myTab),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text('Tab 1', style: TextStyle(fontSize: 40)),
            ),
            Center(
              child: Text('Tab 2', style: TextStyle(fontSize: 40)),
            ),
            Center(
              child: Text('Tab 3', style: TextStyle(fontSize: 40)),
            ),
            Center(
              child: Text('Tab 4', style: TextStyle(fontSize: 40)),
            ),
          ]),
        ),
      ),
    );
  }
}
