import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main(List<String> args) {
  runApp(const MyAppQ());
}

class MyAppQ extends StatelessWidget {
  const MyAppQ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePageQ(),
    );
  }
}

class MyHomePageQ extends StatelessWidget {
  MyHomePageQ({super.key});
  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Dismissible')),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key('itemID${index.toString()}'),
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  print(direction);
                } else {
                  print(direction);
                }
              },
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Confirm'),
                        content:
                            const Text('Are you sure to delete this item?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: const Text('No')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: const Text('yes')),
                        ],
                      );
                    });
              },
              // direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.delete, size: 25),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Center(child: Text('${index + 1}')),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(faker.lorem.sentence()),
              ),
            );
          },
        ));
  }
}
