import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/config/theme/theme.dart';
import 'package:random_user_generator/logic/riverpod/observer.dart';
import 'package:random_user_generator/logic/riverpod/theme_switcher.dart';
import 'package:random_user_generator/presentation/screens/main_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [Observer()],
      child: const MyApp(),
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider).themeData,
      darkTheme: darkMode,
      home: const MainScreen(),
    );
  }
}
