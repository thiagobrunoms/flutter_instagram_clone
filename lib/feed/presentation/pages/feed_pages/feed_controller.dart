import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class FeedController {
  Future<List<PostEntity>> loadPosts() async {
    UserEntity userEntity = UserEntity(
        name: 'thiago.desales',
        profilePicture: 'assets/perfil-instagram.png',
        hasActiveStories: false);

    UserEntity userEntity2 = UserEntity(
        name: 'thiago.desales',
        profilePicture: 'assets/perfil-instagram.png',
        hasActiveStories: true);

    String postDescription =
        'Pensamentos da madrugada. Essa é uma decrição de uma foto para testes. Testando o conteúdo que aparecerá como descrição da postagem.';

    return [
      PostEntity(
          user: userEntity2,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
      PostEntity(
          user: userEntity,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
      PostEntity(
          user: userEntity2,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
      PostEntity(
          user: userEntity2,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
      PostEntity(
          user: userEntity,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
      PostEntity(
          user: userEntity2,
          comments: [],
          postContent: 'assets/post-test.png',
          description: postDescription),
    ];
  }
}
