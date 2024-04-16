// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotPasswordFormImpl _$$ForgotPasswordFormImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordFormImpl(
      email: json['email'] as String,
      timeText: json['timeText'] as String,
      verificationInProgress: json['verificationInProgress'] as bool,
      code: json['code'] as String?,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ForgotPasswordFormImplToJson(
        _$ForgotPasswordFormImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'timeText': instance.timeText,
      'verificationInProgress': instance.verificationInProgress,
      'code': instance.code,
      'errors': instance.errors,
    };
