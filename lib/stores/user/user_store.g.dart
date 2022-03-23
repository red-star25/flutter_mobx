// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$usersAtom = Atom(name: '_UserStore.users');

  @override
  ObservableList<dynamic> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<dynamic> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void addUsers(String user) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.addUsers');
    try {
      return super.addUsers(user);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUser(String user) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.removeUser');
    try {
      return super.removeUser(user);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users}
    ''';
  }
}
