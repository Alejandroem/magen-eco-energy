// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      jwt: json['jwt'] as String,
      isAuthenticated: json['isAuthenticated'] as bool,
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'isAuthenticated': instance.isAuthenticated,
      'isLoading': instance.isLoading,
    };
