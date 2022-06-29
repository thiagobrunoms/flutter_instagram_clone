import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/story_entity.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/active_avatar.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/stories_controller.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/story_widget.dart';

class StoriesAvatarListWidget extends StatefulWidget {
  const StoriesAvatarListWidget({Key? key}) : super(key: key);

  @override
  State<StoriesAvatarListWidget> createState() =>
      _StoriesAvatarListWidgetState();
}

class _StoriesAvatarListWidgetState extends State<StoriesAvatarListWidget> {
  StoriesController controller = StoriesController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StoryEntity>>(
      future: controller.loadStories(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        List<StoryEntity> stories = snapshot.data!;

        List<Widget> avatars = stories
            .map((eachStory) => StoryWidget(
                avatar: ActiveAvatar(),
                nickname: ActiveStyleNickname('thiagodesales')))
            .toList();

        return _buildList(avatars);
      },
    );
  }

  Widget _buildList(List<Widget> avatars) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        padding: const EdgeInsets.only(left: 10),
        separatorBuilder: (_, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (_, index) {
          return avatars[index];
        },
      ),
    );
  }
}
