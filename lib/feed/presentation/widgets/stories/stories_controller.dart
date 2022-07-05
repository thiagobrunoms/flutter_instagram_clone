import 'package:instagram_clone/feed/domain/story_entity.dart';

class StoriesController {
  Future<List<StoryEntity>> loadStories() async {
    return [
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: true),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
      StoryEntity(
          name: 'thiagodesales',
          profilePicture: 'assets/perfil-instagram.png',
          seen: false),
    ];
  }
}
