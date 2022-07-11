import 'package:instagram_clone/shared/domain/user_entity.dart';

class PostEntity {
  UserEntity user;
  String description;
  String? postContent; //must be a ValueObject
  List<PostEntity> comments;
  DateTime date; //must be a ValueObject
  bool modified;
  int numberOfLikes;

  PostEntity({
    required this.user,
    required this.description,
    required this.comments,
    this.postContent,
    required this.date,
    this.modified = false,
    this.numberOfLikes = 0,
  });
}
