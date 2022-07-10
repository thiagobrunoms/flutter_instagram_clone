import 'package:instagram_clone/feed/domain/post_comment_entity.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class PostEntity {
  UserEntity user;
  String description;
  String postContent; //must be a ValueObject
  List<PostCommentEntity> comments;
  DateTime date; //must be a ValueObject
  bool modified;

  PostEntity(
      {required this.user,
      required this.description,
      required this.comments,
      required this.postContent,
      required this.date,
      this.modified = false});
}
