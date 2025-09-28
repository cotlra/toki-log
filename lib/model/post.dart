import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'post.freezed.dart';
part 'post.g.dart';

const _uuid = Uuid();

@freezed
abstract class Post with _$Post {
  const factory Post({
    required final String id,
    required final String content,
    required final DateTime createdAt,
    required final String? parentId,
    @Default(false) final bool isDeleted,
  }) = _Post;

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

  const Post._();

  factory Post.fromJson(final Map<String, dynamic> json) =>
      _$PostFromJson(json);
}
