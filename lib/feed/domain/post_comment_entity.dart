import 'package:instagram_clone/shared/domain/user_entity.dart';

class PostCommentEntity {
  UserEntity user;
  String description;

  PostCommentEntity({required this.user, required this.description});
}
