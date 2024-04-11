import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/user.dart';

import '../models/login_form.dart';

class LoginFormNotifier extends Notifier<LoginForm> {
  void setEmail(String email) {
    //TODO Validate email set errors
    state = state.copyWith(
      user: state.user.copyWith(
        email: email,
      ),
    );
  }

  @override
  build() {
    return const LoginForm(
      errors: [],
      user: User(
        id:'',
        email: "",
      ),
    );
  }
}
