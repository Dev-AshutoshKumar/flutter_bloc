import 'package:advanceflutter/bloc/postBloc/post_event.dart';
import 'package:advanceflutter/bloc/postBloc/post_state.dart';
import 'package:advanceflutter/model/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repo/post_repo.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository postRepository;

  PostBloc({required this.postRepository}) : super(PostInitial()) {
    on<FetchPost>((event, state) async {
      emit(PostLoading());
      try {
        List<PostModel> posts = await postRepository.fetchPosts();
        emit(PostLoaded(posts: posts));
      } catch (e) {
        emit(PostError(message: e.toString()));
      }
    });
  }
}
