import 'package:mobx/mobx.dart';
import 'package:mobx_flutter/data/models/post/post.dart';
import 'package:mobx_flutter/data/network/apis/posts/post_api.dart';

part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  _PostStore(PostApi postApi) : _postApi = postApi;

  late final PostApi _postApi;

  // store variables:-----------------------------------------------------------
  @observable
  List<Post> posts = [];

  @observable
  bool isLoading = false;

  // actions:-------------------------------------------------------------------
  @action
  Future getPosts() async {
    isLoading = true;
    final postList = await _postApi.getPosts();
    posts = postList;
    isLoading = false;
  }
}
