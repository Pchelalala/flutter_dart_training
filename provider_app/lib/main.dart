import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/posts_view_model.dart';
import 'main_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Fetch and Display Data';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        home: Provider<PostsViewModel>(
            create: (context) => PostsViewModel(),
            child: const MainScreen(title: appTitle)
        )
    );
  }
}


