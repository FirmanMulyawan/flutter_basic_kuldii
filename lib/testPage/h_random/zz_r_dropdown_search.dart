import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton expert')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  List<String> data = [
    "Brazil",
    "Italia (Disabled)",
    "Tunisia",
    'Canada',
    'Indonesia',
    'India',
    'cina',
    'kanada'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: (DropdownSearch<String>(
        clearButtonProps: const ClearButtonProps(isVisible: true),
        popupProps: PopupProps.modalBottomSheet(
          showSelectedItems: true,
          showSearchBox: true,
          disabledItemFn: (String s) => s.startsWith('I'),
        ),
        items: data,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
              labelText: "Menu mode",
              hintText: "country in menu mode",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
        ),
        onChanged: print,
        // selectedItem: "Brazil",
      )

// DropdownSearch<String>.multiSelection(
//     items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
//     popupProps: PopupPropsMultiSelection.menu(
//         showSelectedItems: true,
//         disabledItemFn: (String s) => s.startsWith('I'),
//     ),
//     onChanged: print,
//     selectedItems: ["Brazil"],
// )
          ),
    );
  }
}
