class User{
  final String name;
  final String email;
  final String password;
  final String phone;
  final String school;

  User(this.name, this.email, this.password, this.phone, this.school);

  Map<String, String> toJson(){
    return {
      'name' : this.name,
      'email' : this.email,
      'password' : this.email,
      'phone' : this.phone,
      'school' : this.school,
    };
  }

  factory User.fromJson(Map<String, String> json){
    return User(
      json['name']?? '',
      json['email']?? '',
      json['password']?? '',
      json['phone']?? '',
      json['school']?? '',
    );
  }
}