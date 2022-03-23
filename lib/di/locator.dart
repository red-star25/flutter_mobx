import 'package:get_it/get_it.dart';
import 'package:mobx_flutter/data/network/apis/posts/post_api.dart';
import 'package:mobx_flutter/stores/post/post_store.dart';
import 'package:mobx_flutter/stores/user/user_store.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(PostApi());
  getIt.registerSingleton(PostStore(getIt.get<PostApi>()));
  getIt.registerSingleton(UserStore());
}
