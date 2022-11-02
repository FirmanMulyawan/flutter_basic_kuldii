import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyTheme());
}

class MyTheme extends StatelessWidget {
  const MyTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyThemePage(),
      theme: ThemeData(
          // brightness: Brightness.dark,
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          // visualDensity: VisualDensity.comfortable,
          // visualDensity: VisualDensity.compact,
          visualDensity: const VisualDensity(horizontal: 4, vertical: 0),
          // primarySwatch: Colors.blueGrey,
          // primarySwatch: const MaterialColor(0xFFF5E0C3, <int, Color>{
          //   50: Color(0x1a5D4524),
          //   100: Color(0x1a5D4524),
          //   200: Color(0xaa5D4524),
          //   300: Color(0xaf5D4524),
          //   400: Color(0x1a483112),
          //   500: Color(0xa1483112),
          //   600: Color(0xaa483112),
          //   700: Color(0xff483112),
          //   800: Color(0xaf2F1E06),
          //   900: Color(0xff2F1E06),
          // }),
          primaryColor: const Color(0xff5D4524),
          // accentColor: Colors.amber,
          appBarTheme: const AppBarTheme(
            color: Colors.redAccent,
            titleTextStyle: TextStyle(color: Colors.black),
          ),
          textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.red, fontFamily: 'Stick'))),
    );
  }
}

class MyThemePage extends StatelessWidget {
  const MyThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is a text',
                style: TextStyle(
                  fontSize: 35,
                  color: Theme.of(context).primaryColor,
                )),
            const SizedBox(height: 20),
            const Text('This is a text',
                style: TextStyle(
                  fontSize: 35,
                )),
            ElevatedButton(
                onPressed: () {},
                child: const Text('Button', style: TextStyle(fontSize: 35)))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mediation),
      ),
    );
  }
}
