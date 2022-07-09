import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostActionsWidget extends StatefulWidget {
  const PostActionsWidget({Key? key}) : super(key: key);

  @override
  State<PostActionsWidget> createState() => _PostActionsWidgetState();
}

class _PostActionsWidgetState extends State<PostActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              IconButton(
                icon: _buildIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
              IconButton(
                icon: _buildIcon(FontAwesomeIcons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: _buildIcon(FontAwesomeIcons.paperPlane),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40,
          child: IconButton(
            icon: _buildIcon(
              FontAwesomeIcons.bookmark,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _buildIcon(IconData iconData) => Icon(
        iconData,
        color: Colors.white,
        size: MediaQuery.of(context).size.height * 0.03,
      );
}
