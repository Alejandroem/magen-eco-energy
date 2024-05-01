// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePasswordForm _$UpdatePasswordFormFromJson(Map<String, dynamic> json) {
  return _UpdatePasswordForm.fromJson(json);
}

/// @nodoc
mixin _$UpdatePasswordForm {
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePasswordFormCopyWith<UpdatePasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordFormCopyWith<$Res> {
  factory $UpdatePasswordFormCopyWith(
          UpdatePasswordForm value, $Res Function(UpdatePasswordForm) then) =
      _$UpdatePasswordFormCopyWithImpl<$Res, UpdatePasswordForm>;
  @useResult
  $Res call({String? password, String? confirmPassword, List<String> errors});
}

/// @nodoc
class _$UpdatePasswordFormCopyWithImpl<$Res, $Val extends UpdatePasswordForm>
    implements $UpdatePasswordFormCopyWith<$Res> {
  _$UpdatePasswordFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdatePasswordFormImplCopyWith<$Res>
    implements $UpdatePasswordFormCopyWith<$Res> {
  factory _$$UpdatePasswordFormImplCopyWith(_$UpdatePasswordFormImpl value,
          $Res Function(_$UpdatePasswordFormImpl) then) =
      __$$UpdatePasswordFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? password, String? confirmPassword, List<String> errors});
}

/// @nodoc
class __$$UpdatePasswordFormImplCopyWithImpl<$Res>
    extends _$UpdatePasswordFormCopyWithImpl<$Res, _$UpdatePasswordFormImpl>
    implements _$$UpdatePasswordFormImplCopyWith<$Res> {
  __$$UpdatePasswordFormImplCopyWithImpl(_$UpdatePasswordFormImpl _value,
      $Res Function(_$UpdatePasswordFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? errors = null,
  }) {
    return _then(_$UpdatePasswordFormImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdatePasswordFormImpl implements _UpdatePasswordForm {
  const _$UpdatePasswordFormImpl(
      {required this.password,
      required this.confirmPassword,
      required final List<String> errors})
      : _errors = errors;

  factory _$UpdatePasswordFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatePasswordFormImplFromJson(json);

  @override
  final String? password;
  @override
  final String? confirmPassword;
  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'UpdatePasswordForm(password: $password, confirmPassword: $confirmPassword, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordFormImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password, confirmPassword,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordFormImplCopyWith<_$UpdatePasswordFormImpl> get copyWith =>
      __$$UpdatePasswordFormImplCopyWithImpl<_$UpdatePasswordFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePasswordFormImplToJson(
      this,
    );
  }
}

abstract class _UpdatePasswordForm implements UpdatePasswordForm {
  const factory _UpdatePasswordForm(
      {required final String? password,
      required final String? confirmPassword,
      required final List<String> errors}) = _$UpdatePasswordFormImpl;

  factory _UpdatePasswordForm.fromJson(Map<String, dynamic> json) =
      _$UpdatePasswordFormImpl.fromJson;

  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$UpdatePasswordFormImplCopyWith<_$UpdatePasswordFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
