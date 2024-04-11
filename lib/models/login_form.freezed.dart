// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginForm _$LoginFormFromJson(Map<String, dynamic> json) {
  return _LoginForm.fromJson(json);
}

/// @nodoc
mixin _$LoginForm {
  List<String> get errors => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFormCopyWith<LoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormCopyWith<$Res> {
  factory $LoginFormCopyWith(LoginForm value, $Res Function(LoginForm) then) =
      _$LoginFormCopyWithImpl<$Res, LoginForm>;
  @useResult
  $Res call({List<String> errors, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginFormCopyWithImpl<$Res, $Val extends LoginForm>
    implements $LoginFormCopyWith<$Res> {
  _$LoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? user = null,
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
abstract class _$$LoginFormImplCopyWith<$Res>
    implements $LoginFormCopyWith<$Res> {
  factory _$$LoginFormImplCopyWith(
          _$LoginFormImpl value, $Res Function(_$LoginFormImpl) then) =
      __$$LoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> errors, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginFormImplCopyWithImpl<$Res>
    extends _$LoginFormCopyWithImpl<$Res, _$LoginFormImpl>
    implements _$$LoginFormImplCopyWith<$Res> {
  __$$LoginFormImplCopyWithImpl(
      _$LoginFormImpl _value, $Res Function(_$LoginFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
    Object? user = null,
  }) {
    return _then(_$LoginFormImpl(
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginFormImpl implements _LoginForm {
  const _$LoginFormImpl(
      {required final List<String> errors, required this.user})
      : _errors = errors;

  factory _$LoginFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginFormImplFromJson(json);

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
  String toString() {
    return 'LoginForm(errors: $errors, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormImpl &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errors), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      __$$LoginFormImplCopyWithImpl<_$LoginFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFormImplToJson(
      this,
    );
  }
}

abstract class _LoginForm implements LoginForm {
  const factory _LoginForm(
      {required final List<String> errors,
      required final User user}) = _$LoginFormImpl;

  factory _LoginForm.fromJson(Map<String, dynamic> json) =
      _$LoginFormImpl.fromJson;

  @override
  List<String> get errors;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
