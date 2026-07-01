// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_management_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersManagementState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersManagementState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersManagementState()';
}


}

/// @nodoc
class $UsersManagementStateCopyWith<$Res>  {
$UsersManagementStateCopyWith(UsersManagementState _, $Res Function(UsersManagementState) __);
}


/// Adds pattern-matching-related methods to [UsersManagementState].
extension UsersManagementStatePatterns on UsersManagementState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _UsersLoaded value)?  usersLoaded,TResult Function( _UserLoaded value)?  userLoaded,TResult Function( _CreateSuccess value)?  createSuccess,TResult Function( _InviteSuccess value)?  inviteSuccess,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _UsersLoaded() when usersLoaded != null:
return usersLoaded(_that);case _UserLoaded() when userLoaded != null:
return userLoaded(_that);case _CreateSuccess() when createSuccess != null:
return createSuccess(_that);case _InviteSuccess() when inviteSuccess != null:
return inviteSuccess(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _UsersLoaded value)  usersLoaded,required TResult Function( _UserLoaded value)  userLoaded,required TResult Function( _CreateSuccess value)  createSuccess,required TResult Function( _InviteSuccess value)  inviteSuccess,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _UsersLoaded():
return usersLoaded(_that);case _UserLoaded():
return userLoaded(_that);case _CreateSuccess():
return createSuccess(_that);case _InviteSuccess():
return inviteSuccess(_that);case _ActionSuccess():
return actionSuccess(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _UsersLoaded value)?  usersLoaded,TResult? Function( _UserLoaded value)?  userLoaded,TResult? Function( _CreateSuccess value)?  createSuccess,TResult? Function( _InviteSuccess value)?  inviteSuccess,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _UsersLoaded() when usersLoaded != null:
return usersLoaded(_that);case _UserLoaded() when userLoaded != null:
return userLoaded(_that);case _CreateSuccess() when createSuccess != null:
return createSuccess(_that);case _InviteSuccess() when inviteSuccess != null:
return inviteSuccess(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UsersManagementResponse response)?  usersLoaded,TResult Function( UserDetailsResponse response)?  userLoaded,TResult Function( CreateUserResponse response)?  createSuccess,TResult Function( InviteUserResponse response)?  inviteSuccess,TResult Function( UserActionResponse response)?  actionSuccess,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _UsersLoaded() when usersLoaded != null:
return usersLoaded(_that.response);case _UserLoaded() when userLoaded != null:
return userLoaded(_that.response);case _CreateSuccess() when createSuccess != null:
return createSuccess(_that.response);case _InviteSuccess() when inviteSuccess != null:
return inviteSuccess(_that.response);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.response);case _Error() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UsersManagementResponse response)  usersLoaded,required TResult Function( UserDetailsResponse response)  userLoaded,required TResult Function( CreateUserResponse response)  createSuccess,required TResult Function( InviteUserResponse response)  inviteSuccess,required TResult Function( UserActionResponse response)  actionSuccess,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _UsersLoaded():
return usersLoaded(_that.response);case _UserLoaded():
return userLoaded(_that.response);case _CreateSuccess():
return createSuccess(_that.response);case _InviteSuccess():
return inviteSuccess(_that.response);case _ActionSuccess():
return actionSuccess(_that.response);case _Error():
return error(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UsersManagementResponse response)?  usersLoaded,TResult? Function( UserDetailsResponse response)?  userLoaded,TResult? Function( CreateUserResponse response)?  createSuccess,TResult? Function( InviteUserResponse response)?  inviteSuccess,TResult? Function( UserActionResponse response)?  actionSuccess,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _UsersLoaded() when usersLoaded != null:
return usersLoaded(_that.response);case _UserLoaded() when userLoaded != null:
return userLoaded(_that.response);case _CreateSuccess() when createSuccess != null:
return createSuccess(_that.response);case _InviteSuccess() when inviteSuccess != null:
return inviteSuccess(_that.response);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.response);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UsersManagementState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersManagementState.initial()';
}


}




/// @nodoc


class _Loading implements UsersManagementState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersManagementState.loading()';
}


}




/// @nodoc


class _UsersLoaded implements UsersManagementState {
  const _UsersLoaded(this.response);
  

 final  UsersManagementResponse response;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersLoadedCopyWith<_UsersLoaded> get copyWith => __$UsersLoadedCopyWithImpl<_UsersLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersLoaded&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsersManagementState.usersLoaded(response: $response)';
}


}

/// @nodoc
abstract mixin class _$UsersLoadedCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$UsersLoadedCopyWith(_UsersLoaded value, $Res Function(_UsersLoaded) _then) = __$UsersLoadedCopyWithImpl;
@useResult
$Res call({
 UsersManagementResponse response
});




}
/// @nodoc
class __$UsersLoadedCopyWithImpl<$Res>
    implements _$UsersLoadedCopyWith<$Res> {
  __$UsersLoadedCopyWithImpl(this._self, this._then);

  final _UsersLoaded _self;
  final $Res Function(_UsersLoaded) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_UsersLoaded(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UsersManagementResponse,
  ));
}


}

/// @nodoc


class _UserLoaded implements UsersManagementState {
  const _UserLoaded(this.response);
  

 final  UserDetailsResponse response;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLoadedCopyWith<_UserLoaded> get copyWith => __$UserLoadedCopyWithImpl<_UserLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLoaded&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsersManagementState.userLoaded(response: $response)';
}


}

/// @nodoc
abstract mixin class _$UserLoadedCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$UserLoadedCopyWith(_UserLoaded value, $Res Function(_UserLoaded) _then) = __$UserLoadedCopyWithImpl;
@useResult
$Res call({
 UserDetailsResponse response
});




}
/// @nodoc
class __$UserLoadedCopyWithImpl<$Res>
    implements _$UserLoadedCopyWith<$Res> {
  __$UserLoadedCopyWithImpl(this._self, this._then);

  final _UserLoaded _self;
  final $Res Function(_UserLoaded) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_UserLoaded(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UserDetailsResponse,
  ));
}


}

/// @nodoc


class _CreateSuccess implements UsersManagementState {
  const _CreateSuccess(this.response);
  

 final  CreateUserResponse response;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSuccessCopyWith<_CreateSuccess> get copyWith => __$CreateSuccessCopyWithImpl<_CreateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsersManagementState.createSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$CreateSuccessCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(_CreateSuccess value, $Res Function(_CreateSuccess) _then) = __$CreateSuccessCopyWithImpl;
@useResult
$Res call({
 CreateUserResponse response
});




}
/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(this._self, this._then);

  final _CreateSuccess _self;
  final $Res Function(_CreateSuccess) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_CreateSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CreateUserResponse,
  ));
}


}

/// @nodoc


class _InviteSuccess implements UsersManagementState {
  const _InviteSuccess(this.response);
  

 final  InviteUserResponse response;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InviteSuccessCopyWith<_InviteSuccess> get copyWith => __$InviteSuccessCopyWithImpl<_InviteSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InviteSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsersManagementState.inviteSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$InviteSuccessCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$InviteSuccessCopyWith(_InviteSuccess value, $Res Function(_InviteSuccess) _then) = __$InviteSuccessCopyWithImpl;
@useResult
$Res call({
 InviteUserResponse response
});




}
/// @nodoc
class __$InviteSuccessCopyWithImpl<$Res>
    implements _$InviteSuccessCopyWith<$Res> {
  __$InviteSuccessCopyWithImpl(this._self, this._then);

  final _InviteSuccess _self;
  final $Res Function(_InviteSuccess) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_InviteSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as InviteUserResponse,
  ));
}


}

/// @nodoc


class _ActionSuccess implements UsersManagementState {
  const _ActionSuccess(this.response);
  

 final  UserActionResponse response;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionSuccessCopyWith<_ActionSuccess> get copyWith => __$ActionSuccessCopyWithImpl<_ActionSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'UsersManagementState.actionSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(_ActionSuccess value, $Res Function(_ActionSuccess) _then) = __$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 UserActionResponse response
});




}
/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(this._self, this._then);

  final _ActionSuccess _self;
  final $Res Function(_ActionSuccess) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_ActionSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as UserActionResponse,
  ));
}


}

/// @nodoc


class _Error implements UsersManagementState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UsersManagementState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $UsersManagementStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of UsersManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
