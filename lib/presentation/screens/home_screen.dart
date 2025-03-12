import 'package:flutter/material.dart';
import 'package:random_user_generator/presentation/pages/home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage().build(context),
    );
  }
}