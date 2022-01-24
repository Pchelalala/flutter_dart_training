import 'package:flutter/material.dart';
import 'package:provider_app/post_model.dart';
import 'column_formatter.dart';


class CompareScreen extends StatelessWidget {
  final Post post_0;
  final Post post_1;

  const CompareScreen({Key? key, required this.post_0, required this.post_1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compare'),
      ),
      body: Center(
        child: Column(
          children: [
            ColumnFormatter(text: 'UserId: ', value: post_0.userId.toString()),
            ColumnFormatter(text: 'Id: ', value: post_0.id.toString()),
            ColumnFormatter(text: 'Title: ', value: post_0.title),
            ColumnFormatter(text: 'Body: ', value: post_0.body),
            const Divider(height: 3),
            ColumnFormatter(text: 'UserId: ', value: post_1.userId.toString()),
            ColumnFormatter(text: 'Id: ', value: post_1.id.toString()),
            ColumnFormatter(text: 'Title: ', value: post_1.title),
            ColumnFormatter(text: 'Body: ', value: post_1.body),
          ],
        ),
      ),
    );
  }
}