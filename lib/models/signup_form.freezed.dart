// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupForm _$SignupFormFromJson(Map<String, dynamic> json) {
  return _SignupForm.fromJson(json);
}

/// @nodoc
mixin _$SignupForm {
  List<String> get errors => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupFormCopyWith<SignupForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormCopyWith<$Res> {
  factory $SignupFormCopyWith(
          SignupForm value, $Res Function(SignupForm) then) =
      _$SignupFormCopyWithImpl<$Res, SignupForm>;
  @useResult
  $Res call(
      {List<String> errors,
      User user,
      String password,
      bool obscurePassword,
      bool isLoading});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignupFormCopyWithImpl<$Res, $Val extends SignupForm>
    implements $SignupFormCopyWith<$Res> {
  _$SignupFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? user = null,
    Object? password = null,
    Object? obscurePassword = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupFormImplCopyWith<$Res>
    implements $SignupFormCopyWith<$Res> {
  factory _$$SignupFormImplCopyWith(
          _$SignupFormImpl value, $Res Function(_$SignupFormImpl) then) =
      __$$SignupFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> errors,
      User user,
      String password,
      bool obscurePassword,
      bool isLoading});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupFormImplCopyWithImpl<$Res>
    extends _$SignupFormCopyWithImpl<$Res, _$SignupFormImpl>
    implements _$$SignupFormImplCopyWith<$Res> {
  __$$SignupFormImplCopyWithImpl(
      _$SignupFormImpl _value, $Res Function(_$SignupFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? user = null,
    Object? password = null,
    Object? obscurePassword = null,
    Object? isLoading = null,
  }) {
    return _then(_$SignupFormImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupFormImpl implements _SignupForm {
  const _$SignupFormImpl(
      {required final List<String> errors,
      required this.user,
      required this.password,
      required this.obscurePassword,
      required this.isLoading})
      : _errors = errors;

  factory _$SignupFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupFormImplFromJson(json);

  final List<String> _errors;
  @override
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  final User user;
  @override
  final String password;
  @override
  final bool obscurePassword;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SignupForm(errors: $errors, user: $user, password: $password, obscurePassword: $obscurePassword, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFormImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_errors),
      user,
      password,
      obscurePassword,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormImplCopyWith<_$SignupFormImpl> get copyWith =>
      __$$SignupFormImplCopyWithImpl<_$SignupFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupFormImplToJson(
      this,
    );
  }
}

abstract class _SignupForm implements SignupForm {
  const factory _SignupForm(
      {required final List<String> errors,
      required final User user,
      required final String password,
      required final bool obscurePassword,
      required final bool isLoading}) = _$SignupFormImpl;

  factory _SignupForm.fromJson(Map<String, dynamic> json) =
      _$SignupFormImpl.fromJson;

  @override
  List<String> get errors;
  @override
  User get user;
  @override
  String get password;
  @override
  bool get obscurePassword;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormImplCopyWith<_$SignupFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
