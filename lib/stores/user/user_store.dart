import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  @observable
  ObservableList users = [].asObservable();

  @action
  void addUsers(String user) {
    users.add(user);
  }

  @action
  void removeUser(String user) {
    users.remove(user);
  }
}
