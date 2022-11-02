import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const MyAppFuture());
}

class MyAppFuture extends StatelessWidget {
  const MyAppFuture({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageFuture(),
    );
  }
}

class HomePageFuture extends StatelessWidget {
  const HomePageFuture({super.key});

  Future<Map<String, dynamic>> ambilData() async {
    try {
      var hasilGet = await http.get(Uri.parse('https://reqres.in/api/users/2'));

      if (hasilGet.statusCode >= 200 && hasilGet.statusCode < 300) {
        var data = json.decode(hasilGet.body)['data'] as Map<String, dynamic>;

        return data;
      } else {
        throw (hasilGet.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Builder')),
      body: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.error != null) {
              return Center(
                  child: Text(
                '$snapshot.error',
                style: const TextStyle(fontSize: 35),
              ));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'snapshot',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              );
            }
          },
          future: ambilData()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ambilData();
        },
      ),
    );
  }
}
