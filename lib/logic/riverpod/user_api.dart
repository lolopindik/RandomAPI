import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/core/model/fake_user.dart';
import 'package:random_user_generator/logic/core/services/api_service.dart';

final userProvider = FutureProvider<FakeUser?>((ref) async {
  final apiService = ApiSevice();
  return await apiService.getUser();
});