import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/widgets/feed_appbar.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FeedAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
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
                  if (index == 0) {
                    return createUserAvatar('Seustory');
                  }

                  return createUsersFriendAvatar('thiagodesales');
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createUsersFriendAvatar(String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.red,
                Colors.yellow[200]!,
                Colors.purple.shade900,
                Colors.red,
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(1.5),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/perfil-instagram.png'),
                radius: 35,
              ),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget createUserAvatar(String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            border: Border.fromBorderSide(
              BorderSide(color: Color.fromARGB(255, 77, 76, 76)),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/perfil-instagram.png'),
              radius: 40,
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
