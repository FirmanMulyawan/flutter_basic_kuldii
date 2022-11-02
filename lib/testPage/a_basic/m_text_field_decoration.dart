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
          appBar: AppBar(title: const Text('Text Filed')),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              showCursor: true,
              cursorColor: Colors.amber,
              cursorWidth: 10,
              cursorHeight: 25,
              cursorRadius: const Radius.circular(20),
              textAlign: TextAlign.right, // untuk posisi cursor
              textAlignVertical: TextAlignVertical.bottom,
              textCapitalization: TextCapitalization.words, // untuk huruf besar
              style: const TextStyle(color: Colors.red, fontSize: 20),

              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.amber[50],
                filled: true,
                icon: const Icon(
                  Icons.person,
                  size: 50,
                ),
                border: const OutlineInputBorder(),

                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),

                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),

                prefixIcon: const Icon(
                  Icons.add_a_photo,
                  size: 50,
                ),

                suffixIcon: IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () {},
                ),
                prefixText: "Name: ",
                // prefix: Icon(
                //   Icons.person,
                //   size: 50,
                // ),

                hintText: "Please input your name",
                hintStyle: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                labelText: 'Full Name',
                labelStyle: const TextStyle(
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ))),
    );
  }
}
