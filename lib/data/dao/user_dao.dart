import 'dart:convert';

import '../../models/user.dart';

class UserDao {
  //수정중
  final Map<String, String> _user = {};

  void add_user(String name, String email, String password, String phone, String school){
    User new_user = User(name, email, password, phone, school);
    String userJson = jsonEncode(new_user.toJson());
    _user[email] = userJson;
  }

  Map<String, String> get_all_users(){
    return _user;
  }

  /////////////// 아래 수정
  void delete_user(String id){
    _user.remove(id);
  }

  void update_uer(String id, String data) {
    _user.containsKey(id) ? _user[id] = data : null;
  }

  Map<String,String> get_users(){
    return _user;
  }

  String? get_user_by_email(String email){
    return _user[email];
  }

  List<MapEntry<String, String>> get_user_by_condition(String condition){
    return _user.entries.where((entry) => entry.value.toLowerCase().contains(condition.toLowerCase())).toList();
  }
}