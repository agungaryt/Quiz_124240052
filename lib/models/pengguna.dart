class User {
  String username;
  String password;
  String nama;

  User({required this.username, required this.password, required this.nama});
}

List<User> users = [
   User(username: "rahmat", password: "052", nama: "Rahmat agung"),
   User(username: "admin", password: "admin123", nama: "admin testing"),
];


