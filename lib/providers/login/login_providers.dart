import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/login_form.dart';
import '../../notifiers/login_form_notifier.dart';

final loginFormProvider =
    NotifierProvider<LoginFormNotifier, LoginForm>(LoginFormNotifier.new);
