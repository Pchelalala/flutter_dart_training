import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

//1
// Post(sdasda, sdadasad, dsadasd, dsadsad);

// 2

class Post {
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory Post.defaultOne() => Post(
    userId: 0,
    id: 0,
    title: 'default title',
    body: 'default body',
  );

  factory Post.fromMap(Map<String, dynamic> json) => Post(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );
}