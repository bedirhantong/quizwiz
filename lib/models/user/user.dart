import '../quiz/quiz.dart';

class User {
  String? id;
  String name = "";
  String username = "";
  String profilePicture = "";
  String bio = "";
  String email = "";
  String password = "";
  List<User> friends = [];
  List<Quiz> createdQuizzes = [];
  Map<Quiz, int> scoreOfPlayedQuizzes = {};
  // String token = "";

  User({
    this.id,
    required this.name,
    required this.username,
    required this.profilePicture,
    required this.bio,
    required this.email,
    required this.password,
    // required this.token
  });
//
// User.fromJson(Map<String, dynamic> json) {
//   id = json['id'];
//   name = json['name'];
//   email = json['email'];
//   password = json['password'];
//   token = json['token'];
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = <String, dynamic>{};
//   data['id'] = id;
//   data['name'] = name;
//   data['email'] = email;
//   data['password'] = password;
//   data['token'] = token;
//   return data;
// });
}
