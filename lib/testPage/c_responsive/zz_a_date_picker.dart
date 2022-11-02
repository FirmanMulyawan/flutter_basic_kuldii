import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyDatePicker());
}

class MyDatePicker extends StatelessWidget {
  const MyDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeDatePicker(),
    );
  }
}

class HomeDatePicker extends StatefulWidget {
  const HomeDatePicker({super.key});

  @override
  State<HomeDatePicker> createState() => _HomeDatePickerState();
}

class _HomeDatePickerState extends State<HomeDatePicker> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('date Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectDate.toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                  // initialEntryMode: DatePickerEntryMode.input,
                  // initialDatePickerMode: DatePickerMode.year,
                  // selectableDayPredicate: (day) {
                  //   if ((day.isAfter(DateTime.now()
                  //           .subtract(const Duration(days: 5)))) &&
                  //       (day.isBefore(
                  //           DateTime.now().add(const Duration(days: 2))))) {
                  //     return true;
                  //   }
                  //   return false;
                  // },

                  // helpText: "help text",
                  // cancelText: 'cncel text',
                  // confirmText: 'confirm text',
                  // fieldHintText: 'field hint text',
                  // fieldLabelText: 'field label text'

                  // builder: (context, child) {
                  //   return Theme(data: ThemeData.dark(), child: child);
                  // },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      selectDate = value;
                    });
                  }
                });
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
