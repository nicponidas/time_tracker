import 'package:flutter/material.dart';
import 'package:time_tracker/screens/jobs_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time job\'s tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JobsListScreen(),
    );
  }
}
