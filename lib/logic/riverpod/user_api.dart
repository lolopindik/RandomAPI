import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/data/model/fake_user.dart';
import 'package:random_user_generator/data/services/api_service.dart';

final userProvider = FutureProvider<FakeUser?>((ref) async {
  final apiService = ApiSevice();
  return await apiService.getUser();
});

final usersProvider = ChangeNotifierProvider<UsersNotifier>((ref) {
  return UsersNotifier();
});

class UsersNotifier extends ChangeNotifier {
  final ApiSevice _apiService = ApiSevice();
  final List<FakeUser> _users = [];
  bool _isLoading = false;

  List<FakeUser> get users => _users;
  bool get isLoading => _isLoading;

  Future<void> loadUsers(int count) async {
    if (_isLoading) return;

    _isLoading = true;
    notifyListeners();

    try {
      for (int i = 0; i < count; i++) {
        final user = await _apiService.getUser();
        if (user != null) {
          _users.add(user);
        }
      }
    } catch (e) {
      debugPrint('\x1B[31mError loading users: ${e.toString()}');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clearUsers() {
    _users.clear();
    notifyListeners();
  }
}