import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(const MyAppSH());
}

class MyAppSH extends StatefulWidget {
  const MyAppSH({super.key});

  @override
  State<MyAppSH> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyAppSH> {
  int counter = 0;
  bool isDark = false;

  Future<void> setPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    // jembatan.setInt('counter', counter);
    // jembatan.setBool('isdark', isDark);

    if (jembatan.containsKey('dataLocal')) {
      jembatan.clear();
    }

    Map<String, dynamic> myData = {
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    };

    jembatan.setString('dataLocal', jsonEncode(myData));
    setState(() {});
  }

  Future<void> getPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('dataLocal')) {
      final myData = json.decode(jembatan.getString('dataLocal') ?? 'Data Null')
          as Map<String, dynamic>;

      counter = int.parse(myData['counter']);
      isDark = myData['isDark'] == "true" ? true : false;
      // setState(() {});
    }
  }

  void minus() {
    counter = counter - 1;
    setPreference();
  }

  void add() {
    counter = counter + 1;
    setPreference();
  }

  void changeTeme() {
    isDark = !isDark;
    setPreference();
  }

  void refresh() {
    counter = 0;
    isDark = false;
    setPreference();
  }

  ThemeData dark = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.red,
        brightness: Brightness.dark,
        primary: Colors.red,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.redAccent,
              side: const BorderSide(color: Colors.white, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));

  ThemeData light = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.redAccent),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.amber,
        primary: Colors.red,
        brightness: Brightness.light,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blueGrey,
              side: const BorderSide(color: Colors.black, width: 2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));

  @override
  Widget build(BuildContext context) {
    print('build');
    return FutureBuilder(
        future: getPreference(),
        builder: (context, _) => MaterialApp(
              theme: isDark ? dark : light,
              home: Scaffold(
                appBar: AppBar(
                  title: const Text("Counter Apps"),
                  actions: [
                    IconButton(
                        onPressed: refresh, icon: const Icon(Icons.refresh))
                  ],
                ),
                body: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Angka saat ini adalah : $counter",
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            onPressed: minus, child: const Icon(Icons.remove)),
                        OutlinedButton(
                            onPressed: add, child: const Icon(Icons.add)),
                      ],
                    )
                  ],
                )),
                floatingActionButton: FloatingActionButton(
                  onPressed: changeTeme,
                  child: const Icon(Icons.color_lens),
                ),
              ),
            ));
  }
}
