import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class FeedController {
  Future<List<PostEntity>> loadPosts() async {
    UserEntity userEntity = UserEntity(
        name: 'thiago.desales',
        profilePicture: 'assets/perfil-instagram.png',
        hasActiveStories: true);

    return [
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
      PostEntity(
          user: userEntity, comments: [], postContent: 'assets/post-test.png'),
    ];
  }
}
