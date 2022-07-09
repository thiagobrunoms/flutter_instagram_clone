import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/feed_controller.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/appbar/feed_appbar.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/post_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/stories_avatar_list_widget.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  FeedController controller = FeedController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FeedAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StoriesAvatarListWidget(),
            loadPosts(),
          ],
        ),
      ),
    );
  }

  Widget loadStories() {
    return const StoriesAvatarListWidget();
  }

  Widget loadPosts() {
    return FutureBuilder<List<PostEntity>>(
      future: controller.loadPosts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        List<PostEntity> postsEntity = snapshot.data!;
        return Column(
          children: postsEntity
              .map((eachPostEntity) => PostWidget(post: eachPostEntity))
              .toList(),
        );
      },
    );
  }
}
