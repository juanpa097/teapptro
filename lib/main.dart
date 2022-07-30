import 'package:flutter/material.dart';
import 'package:teapptro/theme/color_schemes.dart';
import 'package:teapptro/features/search/presentation/pages/SearchEventPage.dart';
import 'package:teapptro/theme/text_theme.dart';

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
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme, textTheme: defaultTextTheme),
      home: const SearchEventPage(),
    );
  }
}
