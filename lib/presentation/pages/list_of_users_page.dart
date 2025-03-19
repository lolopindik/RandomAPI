import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:random_user_generator/logic/riverpod/counter.dart';
import 'package:random_user_generator/logic/riverpod/user_api.dart';

class ListOfUsersPage {
  
  Widget build(BuildContext context, WidgetRef ref) {
    final counterData = ref.watch(counterProvider).counter;
    final userNotifier = ref.watch(usersProvider);
    final users = userNotifier.users;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Theme.of(context).hintColor),
            ),
            child: userNotifier.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      final user = users[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.photo),
                          onBackgroundImageError: (_, __) => const Icon(Icons.error),
                        ),
                        title: Text('${user.firstname} ${user.lastname}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Username: ${user.username}'),
                            Text('Email: ${user.email}'),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Gap(MediaQuery.of(context).size.height * 0.05),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                ref.read(usersProvider.notifier).clearUsers();
                ref.read(usersProvider.notifier).loadUsers(counterData);
              },
              tooltip: 'Load Users',
              child: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    );
  }
}
