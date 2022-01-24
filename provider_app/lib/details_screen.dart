import 'package:flutter/material.dart';
import 'package:provider_app/post_model.dart';
import 'column_formatter.dart';


class DetailsScreen extends StatelessWidget {
  final Post post;

  const DetailsScreen({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Column(
          children: [
            ColumnFormatter(text: 'UserId: ', value: post.userId.toString()),
            ColumnFormatter(text: 'Id: ', value: post.id.toString()),
            ColumnFormatter(text: 'Title: ', value: post.title),
            ColumnFormatter(text: 'Body: ', value: post.body),
          ],
        ),
      ),
    );
  }
}