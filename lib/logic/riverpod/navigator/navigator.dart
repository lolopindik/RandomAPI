import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_user_generator/logic/riverpod/navigator/navigator_model.dart';

final riverpodnavigator = ChangeNotifierProvider<NavigatorModel>((ref){
  return NavigatorModel(index: 0);
});