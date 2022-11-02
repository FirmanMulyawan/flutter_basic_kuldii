import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String data = 'Belum ada Input';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog')),
      body: Center(child: Text(data, style: const TextStyle(fontSize: 35))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Confirm'),
                  content: const Text('Are you sure to delete this item?'),
                  actions: [
                    TextButton(
                        child: const Text('No'),
                        onPressed: () {
                          setState(() {
                            data = 'false';
                          });
                          Navigator.of(context).pop(false);
                        }),
                    TextButton(
                        child: const Text('Yes'),
                        onPressed: () {
                          setState(() {
                            data = 'true';
                          });

                          Navigator.of(context).pop(true);
                        })
                  ],
                );
              }).then((value) => print('telah di klik $value'));
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
