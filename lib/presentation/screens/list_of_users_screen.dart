import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/presentation/pages/list_of_users_page.dart';
import 'package:random_user_generator/presentation/widgets/counter_widget.dart';

class ListOfUsersScreen extends ConsumerWidget {
  const ListOfUsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: CounterWidget().build(context, ref),
      body: ListOfUsersPage().build(context, ref),
    );
  }
}
