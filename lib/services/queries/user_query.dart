// 수정
import 'package:calorie_burn/data/dao/user_dao.dart';

class get_user_by_email_query{
  final String email;

  get_user_by_email_query(this.email);
}
class get_user_by_email_handler{
  final UserDao userDao;

  get_user_by_email_handler(this.userDao);

  String? handle(get_user_by_email_query query){
    return userDao.get_user_by_email(query.email);
  }
}

class get_all_users_query{}
class get_app_users_handler{
  final UserDao userDao;

  get_app_users_handler(this.userDao);

  Map<String, String> handle(get_all_users_query query) {
    return userDao.get_all_users();
  }
}

class get_user_by_condition_query {
  final String condition;

  get_user_by_condition_query(this.condition);
}