import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserService with ChangeNotifier {
  Client? _user;

  void createUser(Client? user) {
    _user = user;
  }

  void deleteUser() {
    _user = null;
  }

  Client? get user => _user;

  bool get hasUser => _user != null;
}
