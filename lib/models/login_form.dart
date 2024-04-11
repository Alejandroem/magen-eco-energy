import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'login_form.freezed.dart';
part 'login_form.g.dart';

@freezed
class LoginForm with _$LoginForm {
  const factory LoginForm({
    required List<String> errors,
    required User user,
  }) = _LoginForm;

  factory LoginForm.fromJson(Map<String, Object?> json) =>
      _$LoginFormFromJson(json);
}
