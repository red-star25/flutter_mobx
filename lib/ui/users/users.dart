import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/di/locator.dart';
import 'package:mobx_flutter/stores/user/user_store.dart';

class UsersPage extends StatelessWidget {
  UsersPage({Key? key}) : super(key: key);
  final _userStore = getIt.get<UserStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _userStore.addUsers("User ${_userStore.users.length + 1}");
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Observer(
        builder: (context) {
          if (_userStore.users.isEmpty) {
            return const Center(
              child: Text("No User Found"),
            );
          }
          return ListView.builder(
            itemCount: _userStore.users.length,
            itemBuilder: (context, index) {
              final user = _userStore.users[index];
              return Dismissible(
                background: Container(color: Colors.red),
                key: UniqueKey(),
                onDismissed: (direction) {
                  _userStore.removeUser(user);
                },
                child: ListTile(
                  title: Text(user),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
