import 'package:flutter/material.dart';

import 'My_contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyContacts(),
      debugShowCheckedModeBanner: false,
    );
  }
}