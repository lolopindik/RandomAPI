import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/config/theme/theme.dart';
import 'package:random_user_generator/logic/riverpod/observer.dart';
import 'package:random_user_generator/presentation/screens/main_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Observer()],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      // theme: darkMode,
      darkTheme: darkMode,
      home: const MainScreen(),
    );
  }
}
