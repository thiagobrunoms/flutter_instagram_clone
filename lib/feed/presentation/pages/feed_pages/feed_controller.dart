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
        'Pensamentos da madrugada. Essa é uma decrição de uma foto para testes. Testando o conteúdo que aparecerá como descrição da postagem. Testando agora o overflow dinamico, para mostrar mais linhas do que pode estar! Ok!!!! ';

    DateTime dateTime = DateTime.now().subtract(const Duration(days: 2));

    return [
      PostEntity(
        user: userEntity2,
        comments: [
          PostEntity(
            user: userEntity,
            description: 'Comentário 1',
            comments: [
              PostEntity(
                user: userEntity,
                description: 'Comentário 1.1',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 1.2',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 1.3',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
            ],
            numberOfLikes: 23,
            date: DateTime.now(),
          ),
          PostEntity(
            user: userEntity,
            description: 'Comentário 2',
            comments: [
              PostEntity(
                user: userEntity,
                description: 'Comentário 2.1',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 2.2',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 2.3',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 2.4',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
            ],
            numberOfLikes: 23,
            date: DateTime.now(),
          ),
          PostEntity(
            user: userEntity,
            description: 'Comentário 3',
            comments: [
              PostEntity(
                user: userEntity,
                description: 'Comentário 3.1',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 3.2',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 3.3',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
              PostEntity(
                user: userEntity,
                description: 'Comentário 3.4',
                comments: [],
                numberOfLikes: 3,
                date: DateTime.now(),
              ),
            ],
            numberOfLikes: 23,
            date: DateTime.now(),
          ),
        ],
        postContent: 'assets/post-test.png',
        description: postDescription,
        date: dateTime,
        numberOfLikes: 10,
        modified: true,
      ),
      PostEntity(
        user: userEntity,
        comments: [],
        postContent: 'assets/post-test.png',
        description: 'Comentário 2',
        date: dateTime,
      ),
      PostEntity(
        user: userEntity2,
        comments: [],
        postContent: 'assets/post-test.png',
        description: 'Comentário 3',
        date: dateTime,
        numberOfLikes: 6,
      ),
      // PostEntity(
      //   user: userEntity2,
      //   comments: [],
      //   postContent: 'assets/post-test.png',
      //   description: postDescription,
      //   date: dateTime,
      //   numberOfLikes: 17,
      // ),
      // PostEntity(
      //   user: userEntity,
      //   comments: [],
      //   postContent: 'assets/post-test.png',
      //   description: postDescription,
      //   date: dateTime,
      // ),
      // PostEntity(
      //   user: userEntity2,
      //   comments: [],
      //   postContent: 'assets/post-test.png',
      //   description: postDescription,
      //   date: dateTime,
      // ),
    ];
  }
}
