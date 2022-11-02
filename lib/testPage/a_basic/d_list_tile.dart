import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('List Tile')),
        body: ListView(
          children: const [
            ListTile(
              // contentPadding: EdgeInsets.all(30),
              // contentPadding: EdgeInsets.only(top: 30),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              title: Text('Sandhika Rahardi'),
              subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
              tileColor: Colors.amber,
              dense: true,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Sandhika Rahardi'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text('Sandhika Rahardi'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text('Sandhika Rahardi'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text('Sandhika Rahardi'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
          ],
        ),
      ),
    );
  }
}
