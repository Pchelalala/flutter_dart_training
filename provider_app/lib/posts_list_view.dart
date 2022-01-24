import 'package:flutter/material.dart';
import 'package:provider_app/post_model.dart';
import 'compare_screen.dart';
import 'details_screen.dart';

class PostsListView extends StatelessWidget {
  final String title;
  final List<Post> posts;

  const PostsListView({Key? key, required this.title, required this.posts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) {
        final post_0 = posts[index];
        final post_1 = posts[index+1];
        return InkWell(
          onTap: () async {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailsScreen(
                    post: post_0,
                  );
                },
              ),
            );
          },
            onLongPress: () async {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CompareScreen(
                      post_0: post_0,
                      post_1: post_1,
                    );
                  },
                ),
              );
            },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xffff9797),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ButtonBar(
              children: [
                Text(
                  post_0.title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}
