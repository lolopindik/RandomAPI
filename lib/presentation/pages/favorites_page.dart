import 'package:flutter/material.dart';
import 'package:random_user_generator/logic/core/services/api_service.dart';

class FavoritesPage {
  Widget build(BuildContext context){
    return SizedBox(
      child: Center(
        child: FloatingActionButton(
          onPressed: () {
            ApiSevive().getUser();
          }, 
          child: Text('Debug'))
      ),
    );
  }
}