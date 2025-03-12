import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/riverpod/navigator/navigator.dart';
import 'package:random_user_generator/presentation/screens/favorites_screen.dart';
import 'package:random_user_generator/presentation/screens/home_screen.dart';
import 'package:random_user_generator/presentation/widgets/app_bar_widget.dart';
import 'package:random_user_generator/presentation/widgets/bottom_bar_widget.dart';
import 'package:random_user_generator/presentation/widgets/drawer_widget.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: BottomBarWidget().build(context, ref),
      appBar: AppBarWidget().build(context),
      drawer: DrawerWidget().build(context),
      body: IndexedStack(
        index: ref.watch(riverpodnavigator).index,
        children: [
          HomeScreen(),
          FavotitesScreen()
        ],
      ),
    );
  }
}