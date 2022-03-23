import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/di/locator.dart';
import 'package:mobx_flutter/stores/post/post_store.dart';
import 'package:mobx_flutter/ui/users/users.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _postStore = getIt.get<PostStore>();

  @override
  void initState() {
    getPost();
    super.initState();
  }

  Future<void> getPost() async {
    await _postStore.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => UsersPage(),
            ),
          );
        },
        child: const Icon(
          Icons.person,
        ),
      ),
      body: Observer(
        builder: (context) {
          if (_postStore.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: _postStore.posts.length,
            itemBuilder: (context, index) {
              final post = _postStore.posts[index];
              return ListTile(
                title: Text(post.title ?? ""),
                subtitle: Text(post.body ?? ""),
              );
            },
          );
        },
      ),
    );
  }
}
