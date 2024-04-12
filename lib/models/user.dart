import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    String? fullName,
    String? username,
    String? streetAddress,
    String? city,
    String? stateOrProvince,
    String? country,
    String? postalCode,
    String? phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
