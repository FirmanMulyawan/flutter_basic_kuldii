// extract widget klik kanan -> refactor -> extract widget
// faker => https://pub.dev/packages/faker

import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Extract Widget')),
          body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ChatItem(
                  imageUrl: 'https://picsum.photos/id/$index/200/300',
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence());
            },
          )),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text('10:00 PM'),
    );
  }
}
