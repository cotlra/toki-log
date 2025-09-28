import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class Post {
  Post({
    required this.id,
    required this.content,
    required this.createdAt,
    this.parentId,
  });

  factory Post.create({
    required final String content,
    required final String? parentId,
  }) {
    return Post(
      id: _uuid.v4(),
      content: content,
      createdAt: DateTime.now(),
      parentId: parentId,
    );
  }

  factory Post.fromJson(final Map<String, dynamic> json) {
    return Post(
      id: json['id'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      parentId: json['parentId'] as String?,
    );
  }

  String id;
  String content;
  DateTime createdAt;
  String? parentId;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'parentId': parentId,
    };
  }
}
