import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const AppCupertino());
}

class AppCupertino extends StatelessWidget {
  const AppCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeCupertino(),
    );
  }
}

class HomeCupertino extends StatelessWidget {
  const HomeCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cuppertino')),
      body: Center(
          child: ElevatedButton(
        // onPressed: () {
        //   showDialog(
        //       context: context,
        //       builder: (context) {
        //         return Platform.isIOS
        //             ? CupertinoAlertDialog(
        //                 title: const Text('Delete Item'),
        //                 content: const Text('Are you sure to delete this item'),
        //                 actions: [
        //                   TextButton(onPressed: () {}, child: const Text('No')),
        //                   TextButton(
        //                       onPressed: () {}, child: const Text('Yes')),
        //                 ],
        //               )
        //             : AlertDialog(
        //                 title: const Text('Delete Item'),
        //                 content: const Text('Are you sure to delete this item'),
        //                 actions: [
        //                   TextButton(onPressed: () {}, child: const Text('No')),
        //                   TextButton(
        //                       onPressed: () {}, child: const Text('Yes')),
        //                 ],
        //               );
        //       });
        // },
        onPressed: () {
          Platform.isIOS
              ? showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1999),
                  lastDate: DateTime(2050))
              : showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: Colors.white,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.time,
                        onDateTimeChanged: (value) {},
                        initialDateTime: DateTime.now(),
                      ),
                    );
                  },
                );
        },
        child: const Text('Alert Dialog'),
      )),
    );
  }
}
