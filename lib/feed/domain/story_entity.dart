import 'package:instagram_clone/shared/domain/user_entity.dart';

class StoryEntity {
  UserEntity user;
  bool seen;

  StoryEntity({required this.user, required this.seen});
}
