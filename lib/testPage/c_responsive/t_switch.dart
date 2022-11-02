import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MySwitch());
}

class MySwitch extends StatelessWidget {
  const MySwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwitchHome(),
    );
  }
}

class SwitchHome extends StatefulWidget {
  const SwitchHome({super.key});

  @override
  State<SwitchHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SwitchHome> {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey,
            // height: 100,
            width: 100,
            child: Switch(
                activeColor: Colors.amber,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.indigo,
                inactiveTrackColor: Colors.red,
                activeThumbImage: const AssetImage('images/true.png'),
                inactiveThumbImage: const AssetImage('images/false.png'),
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                }),
          ),
          const SizedBox(height: 25),
          Text(statusSwitch == true ? 'Switch On' : 'Switch Off',
              style: const TextStyle(fontSize: 37))
        ],
      )),
    );
  }
}
