import 'package:instagram_clone/feed/domain/story_entity.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class StoriesController {
  Future<List<StoryEntity>> loadStories() async {
    return [
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: false),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
      StoryEntity(
          user: UserEntity(
            name: 'thiagodesales',
            profilePicture: 'assets/perfil-instagram.png',
          ),
          seen: true),
    ];
  }
}
