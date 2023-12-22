import 'package:flutter/material.dart';

import 'custom_dropdown_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Dropdown Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark( ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> options = ['Apple', 'Banaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaana', 'Cherry', 'Fig'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Dropdown Example'),
      ),
      body: Center(
        child: CustomDropdownButton(
          value: selectedValue,
          items: options,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          }, getDisplayValue: (String ) { // Added this line
            return 'Hello $String'; // Added this line
      },
        ),
      ),
    );
  }
}


