// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPasswordForm _$ForgotPasswordFormFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordForm.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordForm {
  String get email => throw _privateConstructorUsedError;
  String get timeText => throw _privateConstructorUsedError;
  bool get verificationInProgress => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordFormCopyWith<ForgotPasswordForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordFormCopyWith<$Res> {
  factory $ForgotPasswordFormCopyWith(
          ForgotPasswordForm value, $Res Function(ForgotPasswordForm) then) =
      _$ForgotPasswordFormCopyWithImpl<$Res, ForgotPasswordForm>;
  @useResult
  $Res call(
      {String email,
      String timeText,
      bool verificationInProgress,
      String? code,
      List<String> errors});
}

/// @nodoc
class _$ForgotPasswordFormCopyWithImpl<$Res, $Val extends ForgotPasswordForm>
    implements $ForgotPasswordFormCopyWith<$Res> {
  _$ForgotPasswordFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? timeText = null,
    Object? verificationInProgress = null,
    Object? code = freezed,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      timeText: null == timeText
          ? _value.timeText
          : timeText // ignore: cast_nullable_to_non_nullable
              as String,
      verificationInProgress: null == verificationInProgress
          ? _value.verificationInProgress
          : verificationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordFormImplCopyWith<$Res>
    implements $ForgotPasswordFormCopyWith<$Res> {
  factory _$$ForgotPasswordFormImplCopyWith(_$ForgotPasswordFormImpl value,
          $Res Function(_$ForgotPasswordFormImpl) then) =
      __$$ForgotPasswordFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String timeText,
      bool verificationInProgress,
      String? code,
      List<String> errors});
}

/// @nodoc
class __$$ForgotPasswordFormImplCopyWithImpl<$Res>
    extends _$ForgotPasswordFormCopyWithImpl<$Res, _$ForgotPasswordFormImpl>
    implements _$$ForgotPasswordFormImplCopyWith<$Res> {
  __$$ForgotPasswordFormImplCopyWithImpl(_$ForgotPasswordFormImpl _value,
      $Res Function(_$ForgotPasswordFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? timeText = null,
    Object? verificationInProgress = null,
    Object? code = freezed,
    Object? errors = null,
  }) {
    return _then(_$ForgotPasswordFormImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      timeText: null == timeText
          ? _value.timeText
          : timeText // ignore: cast_nullable_to_non_nullable
              as String,
      verificationInProgress: null == verificationInProgress
          ? _value.verificationInProgress
          : verificationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
class _$ForgotPasswordFormImpl implements _ForgotPasswordForm {
  const _$ForgotPasswordFormImpl(
      {required this.email,
      required this.timeText,
      required this.verificationInProgress,
      required this.code,
      required final List<String> errors})
      : _errors = errors;

  factory _$ForgotPasswordFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPasswordFormImplFromJson(json);

  @override
  final String email;
  @override
  final String timeText;
  @override
  final bool verificationInProgress;
  @override
  final String? code;
  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ForgotPasswordForm(email: $email, timeText: $timeText, verificationInProgress: $verificationInProgress, code: $code, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordFormImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.timeText, timeText) ||
                other.timeText == timeText) &&
            (identical(other.verificationInProgress, verificationInProgress) ||
                other.verificationInProgress == verificationInProgress) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      timeText,
      verificationInProgress,
      code,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordFormImplCopyWith<_$ForgotPasswordFormImpl> get copyWith =>
      __$$ForgotPasswordFormImplCopyWithImpl<_$ForgotPasswordFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPasswordFormImplToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordForm implements ForgotPasswordForm {
  const factory _ForgotPasswordForm(
      {required final String email,
      required final String timeText,
      required final bool verificationInProgress,
      required final String? code,
      required final List<String> errors}) = _$ForgotPasswordFormImpl;

  factory _ForgotPasswordForm.fromJson(Map<String, dynamic> json) =
      _$ForgotPasswordFormImpl.fromJson;

  @override
  String get email;
  @override
  String get timeText;
  @override
  bool get verificationInProgress;
  @override
  String? get code;
  @override
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordFormImplCopyWith<_$ForgotPasswordFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
