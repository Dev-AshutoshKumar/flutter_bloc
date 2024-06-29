import 'package:advanceflutter/bloc/postBloc/post_bloc.dart';
import 'package:advanceflutter/bloc/postBloc/post_event.dart';
import 'package:advanceflutter/repo/post_repo.dart';
import 'package:advanceflutter/view/calculate/calculator.dart';
import 'package:advanceflutter/view/post/posts_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

Future<void> main() async {
  final PostRepository postRepository = PostRepository(baseUrl: 'https://jsonplaceholder.typicode.com/');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    postRepository: postRepository,
  ));
}

class MyApp extends StatelessWidget {
  final PostRepository postRepository;

  const MyApp({super.key, required this.postRepository});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<PostBloc>(
          create: (context) => PostBloc(postRepository: postRepository)..add(FetchPost()),
        ),
      ], child:const PostsPage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
