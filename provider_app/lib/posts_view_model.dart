import 'package:provider_app/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostsViewModel {
  Future<List<Post>> fetchPostsList(http.Client client) async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Post>((json) => Post.fromMap(json)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
