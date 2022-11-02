import 'package:flutter/material.dart';

import '../modelsHttp/post_stateful_model.dart';

class HomeStateful extends StatefulWidget {
  const HomeStateful({super.key});

  @override
  State<HomeStateful> createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataResponse = HttpStateful(id: null, job: null, name: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                dataResponse.id == null
                    ? "ID : Belum ada data"
                    : "ID : ${dataResponse.id}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                dataResponse.name == null
                    ? "Belum ada data"
                    : "${dataResponse.name}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                dataResponse.job == null
                    ? "Belum ada data"
                    : "${dataResponse.job}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                dataResponse.createdAt == null
                    ? "Belum ada data"
                    : "${dataResponse.createdAt}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectAPI('joni', 'back end').then((value) {
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: const Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
