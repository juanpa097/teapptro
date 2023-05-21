import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'features/search/presentation/pages/search_event_page.dart';
import 'firebase_options.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const TeapptroApp());
}

class TeapptroApp extends StatelessWidget {
  const TeapptroApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme baseTextTheme =
        Theme.of(context).textTheme.apply(fontFamily: 'Inter');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teapptro',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0DCDAA)),
        textTheme: baseTextTheme.copyWith(
          displaySmall:
              baseTextTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700),
          headlineMedium: baseTextTheme.headlineMedium
              ?.copyWith(fontWeight: FontWeight.w700),
          headlineSmall: baseTextTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.w600),
          titleLarge:
              baseTextTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          titleMedium:
              baseTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          titleSmall:
              baseTextTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        useMaterial3: false,
      ),
      home: const SearchEventPage(),
    );
  }
}
