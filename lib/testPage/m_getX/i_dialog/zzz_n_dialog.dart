import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return const AlertDialog(
          //         title: Text('Ini judul'),
          //         content: Text('Ini deskrpisinya'),
          //       );
          //     });

          // Get.defaultDialog(
          //     barrierDismissible: false,
          //     title: "Ini judul",
          //     middleText: "Ini deskripsi",
          //     // bawaan cancel
          //     textCancel: "Batal",
          //     cancelTextColor: Colors.pink,
          //     onCancel: () {},
          //     // custom cancel widget
          //     cancel: ElevatedButton(
          //         onPressed: () {
          //           Get.back();
          //         },
          //         child: const Text('batalkan')),
          //     // custom confirm
          //     confirm:
          //         ElevatedButton(onPressed: () {}, child: const Text('Oke')),
          //     // bawaan confirm
          //     // textConfirm: "Oke Konfirm",
          //     // confirmTextColor: Colors.redAccent,
          //     // onConfirm: () {},
          //     backgroundColor: Colors.redAccent,
          //     radius: 100,
          //     actions: [
          //       ElevatedButton(
          //           onPressed: () {}, child: const Text('pilihan 1')),
          //       ElevatedButton(
          //           onPressed: () {}, child: const Text('pilihan 2')),
          //       ElevatedButton(onPressed: () {}, child: const Text('pilihan 3'))
          //     ]);

          Get.defaultDialog(
              title: "Judul",
              middleText: "ini middle text",
              textCancel: "cancel",
              onCancel: () {},
              textConfirm: "okey",
              onConfirm: () {
                print('okeeyy');
                Get.back();
                Get.to(() => const OtherPage());
              },
              confirmTextColor: Colors.white);

          // Get.dialog(const Icon(Icons.abc), name: "dialog khusus"
          //     //   const AlertDialog(
          //     //   title: Text('Ini judul'),
          //     //   content: Text('Ini deskrpisinya'),
          //     // )
          //     );

          // Get.generalDialog(
          //   pageBuilder: (_, __, ___) {
          //     return const AlertDialog(
          //       title: Text('Ini judul'),
          //       content: Text('Ini deskrpisinya'),
          //     );
          //   },
          // );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
