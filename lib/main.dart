import 'package:flutter/material.dart';
import 'package:pirn/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estonian Dictionary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 114, 206)),
        useMaterial3: true,
      ),
      home: const SearchScreen(title: 'Dictionary'),
      debugShowCheckedModeBanner: false,
    );
  }
}
