class User {
  late int id;
  late String email;

  User({
    required this.id,
    required this.email,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id'] = id;
    data['email'] = email;

    return data;
  }

  static User mock() {
    return User(id: 1, email: 'user@example.com');
  }

  static List<User> mocks() {
    return [
      User(id: 1, email: 'user@example.com'),
      User(id: 1, email: 'user1@example.com'),
      User(id: 1, email: 'user2@example.com'),
    ];
  }
}
