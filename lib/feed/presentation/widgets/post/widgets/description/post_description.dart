import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/active_style.dart';

class PostDescriptionWidget extends StatefulWidget {
  const PostDescriptionWidget({Key? key}) : super(key: key);

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
          text: TextSpan(
            text: 'thiago.desales',
            children: [
              const TextSpan(
                text: ' pensamentos da madrugada!',
                style: TextStyle(color: Colors.white),
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
            ? const Text(
                'O tempo é agora. Não tenha medo de dizer o que sente pelas pessoas no momento presente: parece que esses últimos anos, a vida tem sido um sopro',
                style: TextStyle(color: Colors.white),
              )
            : Container()
      ],
    );
  }
}
