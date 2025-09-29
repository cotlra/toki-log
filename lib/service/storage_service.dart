import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../model/post.dart';

class StorageService {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/posts.json');
  }

  Future<List<Post>> readPosts() async {
    try {
      final file = await _localFile;
      if (!file.existsSync()) {
        return [];
      }
      final contents = await file.readAsString();
      final json = jsonDecode(contents) as List<dynamic>;
      return json
          .map((final e) => Post.fromJson(e as Map<String, dynamic>))
          .toList();
    } on Exception catch (e) {
      // If encountering an error, return an empty list
      print('Error reading posts: $e');
      return [];
    }
  }

  Future<File> writePosts(final List<Post> posts) async {
    final file = await _localFile;
    final json = posts.map((final e) => e.toJson()).toList();
    return file.writeAsString(jsonEncode(json));
  }

  Future<void> updatePost(final String postId, final String newContent) async {
    final posts = await readPosts();
    final index = posts.indexWhere((final p) => p.id == postId);
    if (index != -1) {
      final oldPost = posts[index];
      final newPost = oldPost.copyWith(content: newContent);
      posts[index] = newPost;
      await writePosts(posts);
    }
  }

  Future<void> deletePost(final String postId) async {
    final posts = await readPosts();
    final index = posts.indexWhere((final p) => p.id == postId);
    if (index != -1) {
      posts[index] = posts[index].copyWith(isDeleted: true);
      await writePosts(posts);
    }
  }
}
