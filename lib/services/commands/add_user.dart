import '../../data/dao/user_dao.dart';

//수정
class add_user_command {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String school;

  add_user_command(this.name, this.email, this.password, this.phone, this.school);

}

class add_user_handler {
  final UserDao userDao;

  add_user_handler(this.userDao);

  void Handler(add_user_command command){
    userDao.add_user(command.name,command.email, command.password, command.phone, command.school);
  }
}

