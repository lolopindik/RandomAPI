import 'package:flutter/material.dart';
import 'package:random_user_generator/presentation/pages/favorites_page.dart';

class FavotitesScreen extends StatelessWidget {
  const FavotitesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavoritesPage().build(context),
    );
  }
}