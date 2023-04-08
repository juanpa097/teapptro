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
            headline3:
                baseTextTheme.headline3?.copyWith(fontWeight: FontWeight.w700),
            headline4:
                baseTextTheme.headline4?.copyWith(fontWeight: FontWeight.w700),
            headline5:
                baseTextTheme.headline5?.copyWith(fontWeight: FontWeight.w600),
            headline6:
                baseTextTheme.headline6?.copyWith(fontWeight: FontWeight.w600),
            subtitle1:
                baseTextTheme.subtitle1?.copyWith(fontWeight: FontWeight.w700),
            subtitle2:
                baseTextTheme.subtitle2?.copyWith(fontWeight: FontWeight.w600),
          ),
          useMaterial3: false),
      home: const SearchEventPage(),
    );
  }
}
