import 'package:flutter/material.dart';

class AppBarWidget {
  PreferredSizeWidget? build(BuildContext context) {
    return AppBar(
      title: const Text(
        'RandomAPI',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      leading: Builder(
        builder: (BuildContext innerContext) {
          return IconButton(
            onPressed: () {
              Scaffold.of(innerContext).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        },
      ),
    );
  }
}