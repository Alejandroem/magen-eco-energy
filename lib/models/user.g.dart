// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String?,
      username: json['username'] as String?,
      streetAddress: json['streetAddress'] as String?,
      city: json['city'] as String?,
      stateOrProvince: json['stateOrProvince'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'username': instance.username,
      'streetAddress': instance.streetAddress,
      'city': instance.city,
      'stateOrProvince': instance.stateOrProvince,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'phoneNumber': instance.phoneNumber,
    };
