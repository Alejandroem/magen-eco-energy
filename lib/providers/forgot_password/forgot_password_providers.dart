import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/forgot_password_form.dart';
import 'package:myapp/notifiers/forgot_password_form_notifier.dart';

final forgotPasswordProviders =
    NotifierProvider<ForgotPasswordFormNotifier, ForgotPasswordForm>(
  ForgotPasswordFormNotifier.new,
);
