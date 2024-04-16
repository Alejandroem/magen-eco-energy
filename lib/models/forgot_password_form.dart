import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_form.freezed.dart';
part 'forgot_password_form.g.dart';

@freezed
class ForgotPasswordForm with _$ForgotPasswordForm {
  const factory ForgotPasswordForm({
    required String email,    
    required String timeText,
    required bool verificationInProgress,
    required String? code,
    required List<String> errors,
  }) = _ForgotPasswordForm;

  factory ForgotPasswordForm.fromJson(Map<String, Object?> json) =>
      _$ForgotPasswordFormFromJson(json);
}
