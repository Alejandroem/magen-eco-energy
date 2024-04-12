import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/signup_form.dart';
import 'package:myapp/notifiers/signup_form_notifier.dart';

final signupFormProvider =
    NotifierProvider<SignUpFormNotifier, SignupForm>(SignUpFormNotifier.new);
