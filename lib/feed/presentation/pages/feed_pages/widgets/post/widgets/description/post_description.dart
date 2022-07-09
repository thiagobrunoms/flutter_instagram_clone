import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';

class PostDescriptionWidget extends StatefulWidget {
  final PostEntity post;
  const PostDescriptionWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostDescriptionWidget> createState() => _PostDescriptionWidgetState();
}

class _PostDescriptionWidgetState extends State<PostDescriptionWidget> {
  bool _seeMore = false;

  @override
  Widget build(BuildContext context) {
    print('rebuilding post desc');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: 'thiago.desales',
            children: [
              TextSpan(
                text: ' ${widget.post.description}',
                style: const TextStyle(color: Colors.white),
              ),
              TextSpan(
                  text: ' mais',
                  style: const TextStyle(color: Colors.grey),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _seeMore = !_seeMore;
                      });
                    }),
            ],
            style: ActiveStyleNickname('thiago.desales', 14).buildTextStyle(),
          ),
        ),
        _seeMore
            ? Text(
                widget.post.description,
                style: const TextStyle(color: Colors.white),
              )
            : Container()
      ],
    );
  }
}
