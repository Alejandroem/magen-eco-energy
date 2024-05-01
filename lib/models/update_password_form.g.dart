// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePasswordFormImpl _$$UpdatePasswordFormImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePasswordFormImpl(
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UpdatePasswordFormImplToJson(
        _$UpdatePasswordFormImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'errors': instance.errors,
    };
