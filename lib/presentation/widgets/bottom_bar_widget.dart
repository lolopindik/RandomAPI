import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/riverpod/navigator.dart';

class BottomBarWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      currentIndex: ref.watch(riverpodnavigator).index,
      onTap: (index) {
        ref.read(riverpodnavigator).currentIndex(index);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Random Users',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Random list',
        ),
      ],
    );
  }
}
