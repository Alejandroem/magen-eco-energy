// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupFormImpl _$$SignupFormImplFromJson(Map<String, dynamic> json) =>
    _$SignupFormImpl(
      errors:
          (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      password: json['password'] as String,
      obscurePassword: json['obscurePassword'] as bool,
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$$SignupFormImplToJson(_$SignupFormImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'user': instance.user,
      'password': instance.password,
      'obscurePassword': instance.obscurePassword,
      'isLoading': instance.isLoading,
    };
