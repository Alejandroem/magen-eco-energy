// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginFormImpl _$$LoginFormImplFromJson(Map<String, dynamic> json) =>
    _$LoginFormImpl(
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      password: json['password'] as String,
      obscurePassword: json['obscurePassword'] as bool,
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$$LoginFormImplToJson(_$LoginFormImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'user': instance.user,
      'password': instance.password,
      'obscurePassword': instance.obscurePassword,
      'isLoading': instance.isLoading,
    };
