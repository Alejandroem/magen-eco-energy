import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'signup_form.freezed.dart';
part 'signup_form.g.dart';

@freezed
class SignupForm with _$SignupForm {
  const factory SignupForm({
    required List<String> errors,
    required User user,
    required String password,
    required bool obscurePassword,
    required bool isLoading,
    required bool isValid,
  }) = _SignupForm;

  factory SignupForm.fromJson(Map<String, Object?> json) =>
      _$SignupFormFromJson(json);
}
