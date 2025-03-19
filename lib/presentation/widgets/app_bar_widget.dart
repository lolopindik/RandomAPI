import 'package:flutter/material.dart';

class AppBarWidget {
  PreferredSizeWidget? build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
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