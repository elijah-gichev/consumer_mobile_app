import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRepository {
  Future<Client> login(String phone) async {
    await Future.delayed(const Duration(seconds: 1));
    return Client.blank();
  }
}
