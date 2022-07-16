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
  TextStyle mystyle = const TextStyle(color: Colors.white, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          overflow: !_seeMore ? TextOverflow.ellipsis : TextOverflow.clip,
          maxLines: !_seeMore ? 2 : null,
          text: TextSpan(
            text: 'thiago.desales',
            children: [
              TextSpan(
                text: ' ${widget.post.description}',
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
            style: ActiveStyleNickname('thiago.desales', 14).buildTextStyle(),
          ),
        ),
        hasOverflow(widget.post.description, mystyle)
            ? _seeMore
                ? Container()
                : InkWell(
                    child: const Text(
                      'mais',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      setState(() {
                        _seeMore = !_seeMore;
                      });
                    },
                  )
            : Container()
      ],
    );
  }

  bool hasOverflow(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      textScaleFactor: WidgetsBinding.instance.window.textScaleFactor,
    )..layout();
    return textPainter.size.width > MediaQuery.of(context).size.width;
  }
}
