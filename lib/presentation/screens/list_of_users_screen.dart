import 'package:flutter/material.dart';
import 'package:random_user_generator/presentation/pages/list_of_users_page.dart';

class ListOfUsersScreen extends StatelessWidget {
  const ListOfUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListOfUsersPage().build(context),
    );
  }
}