import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post_model.dart';


class PostRepository {
  final String baseUrl;

  PostRepository({required this.baseUrl});

  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => PostModel.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
