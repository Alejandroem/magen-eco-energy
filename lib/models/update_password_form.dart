import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_form.freezed.dart';
part 'update_password_form.g.dart';

@freezed
class UpdatePasswordForm with _$UpdatePasswordForm {
  const factory UpdatePasswordForm({
    required String? password,
    required String? confirmPassword,
    required List<String> errors,
  }) = _UpdatePasswordForm;

  factory UpdatePasswordForm.fromJson(Map<String, Object?> json) =>
      _$UpdatePasswordFormFromJson(json);
}
