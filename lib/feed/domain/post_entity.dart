import 'package:instagram_clone/feed/domain/post_comment_entity.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class PostEntity {
  UserEntity user;
  String postContent; //must be a ValueObject
  List<PostCommentEntity> comments;

  PostEntity(
      {required this.user, required this.comments, required this.postContent});
}
