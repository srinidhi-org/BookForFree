import 'package:flutter/material.dart';
import 'screens/cinemas_list_screen.dart';

void main() {
  runApp(const BookForFreeApp());
}

class BookForFreeApp extends StatelessWidget {
  const BookForFreeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookForFree',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CinemasListScreen(),
    );
  }
}
