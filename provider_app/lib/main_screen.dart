import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/posts_view_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider_app/posts_list_view.dart';
import 'package:provider_app/post_model.dart';


class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch and Display Data'),
      ),
      body: FutureBuilder<List<Post>>(
        future: Provider.of<PostsViewModel>(context, listen: false).fetchPostsList(http.Client()),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasError) {
            // print('snapshot error: ${snapshot.error}');
            return Center(
              child: Text('ERROR: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return PostsListView(posts: snapshot.data!,
              title: 'Fetch and Display Data',);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}