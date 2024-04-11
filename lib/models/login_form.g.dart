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
    );

Map<String, dynamic> _$$LoginFormImplToJson(_$LoginFormImpl instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'user': instance.user,
    };
