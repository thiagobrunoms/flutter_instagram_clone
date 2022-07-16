import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/post_comments_widget.dart';

class CommentsResponsesWidget extends StatefulWidget {
  final PostEntity post;
  const CommentsResponsesWidget({Key? key, required this.post})
      : super(key: key);

  @override
  State<CommentsResponsesWidget> createState() =>
      _CommentsResponsesWidgetState();
}

class _CommentsResponsesWidgetState extends State<CommentsResponsesWidget> {
  bool _seeMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostCommentsWidget(post: widget.post).create(),
        ...seeResponsesOfAComment(widget.post),
      ],
    );
  }

  List<Widget> seeResponsesOfAComment(PostEntity post) {
    if (_seeMore) {
      return post.comments
          .map(
            (e) => Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: PostCommentsWidget(post: e).create(),
              ),
            ),
          )
          .toList();
    }

    return [
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 50,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 2,
            child: InkWell(
              onTap: () {
                setState(() {
                  _seeMore = !_seeMore;
                });
              },
              child: Text(
                'Ver ${post.comments.length} respostas',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ];
  }
}
