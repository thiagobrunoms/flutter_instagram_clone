import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/story_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/inactive_style.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/active_avatar.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/inactive_avatar.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/stories_controller.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/story_widget.dart';

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

        List<Widget> avatars = _buildAvatars(stories);

        return _buildList(avatars);
      },
    );
  }

  List<Widget> _buildAvatars(List<StoryEntity> stories) {
    return stories
        .map((eachStory) => StoryWidget(
            avatar:
                eachStory.seen ? InactiveAvatar.large() : ActiveAvatar.large(),
            nickname: eachStory.seen
                ? InactiveStyleNickname(eachStory.name, 12)
                : ActiveStyleNickname(eachStory.name, 12)))
        .toList();
  }

  Widget _buildList(List<Widget> avatars) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.14,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: avatars.length,
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
      ),
    );
  }
}
