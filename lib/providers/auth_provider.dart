import 'package:flutter/cupertino.dart';

import '../models/user.dart';
import '../services/auth_services.dart';

class AuthProvider extends ChangeNotifier {
  String token = "";
  late User user;

  void signup({required User user}) async {
    token = await AuthServices().signup(user: user);
    print(token);
  }
}
