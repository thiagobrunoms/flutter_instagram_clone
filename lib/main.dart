import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/feed_page.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/post_comments_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const FeedPage(),
      routes: {
        'toPostComments': (context) => const PostCommentsPage(),
      },
    );
  }
}
