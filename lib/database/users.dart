class User{
  String name;
  String email;
  String password;
  String rePassword;

  User(this.name, this.email, this.password, this.rePassword);
}

class Users{
  List<User> users = [User("Nursultan", "nime@gmail.com", "123", "123")];
}

Users databaseUsers = Users();