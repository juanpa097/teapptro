import 'package:flutter/material.dart';
import 'package:teapptro/features/search/presentation/pages/search_event_page.dart';

void main() {
  runApp(const TeapptroApp());
}

class TeapptroApp extends StatelessWidget {
  const TeapptroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teapptro',
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0DCDAA)),
          textTheme: Theme.of(context).textTheme.apply(fontFamily: "Inter"),
          useMaterial3: false),
      home: const SearchEventPage(),
    );
  }
}
