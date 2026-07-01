// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roles_and_security_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RolesAndSecurityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RolesAndSecurityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RolesAndSecurityState()';
}


}

/// @nodoc
class $RolesAndSecurityStateCopyWith<$Res>  {
$RolesAndSecurityStateCopyWith(RolesAndSecurityState _, $Res Function(RolesAndSecurityState) __);
}


/// Adds pattern-matching-related methods to [RolesAndSecurityState].
extension RolesAndSecurityStatePatterns on RolesAndSecurityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _CreateRoleSuccess value)?  createRoleSuccess,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _SecurityPolicyUpdateSuccess value)?  securityPolicyUpdateSuccess,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _CreateRoleSuccess() when createRoleSuccess != null:
return createRoleSuccess(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _SecurityPolicyUpdateSuccess() when securityPolicyUpdateSuccess != null:
return securityPolicyUpdateSuccess(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _CreateRoleSuccess value)  createRoleSuccess,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _SecurityPolicyUpdateSuccess value)  securityPolicyUpdateSuccess,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _CreateRoleSuccess():
return createRoleSuccess(_that);case _ActionSuccess():
return actionSuccess(_that);case _SecurityPolicyUpdateSuccess():
return securityPolicyUpdateSuccess(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _CreateRoleSuccess value)?  createRoleSuccess,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _SecurityPolicyUpdateSuccess value)?  securityPolicyUpdateSuccess,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _CreateRoleSuccess() when createRoleSuccess != null:
return createRoleSuccess(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _SecurityPolicyUpdateSuccess() when securityPolicyUpdateSuccess != null:
return securityPolicyUpdateSuccess(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( RolesResponse rolesResponse,  SecurityPolicyResponse securityPolicyResponse)?  loaded,TResult Function( CreateRoleResponse response)?  createRoleSuccess,TResult Function( RoleActionResponse response)?  actionSuccess,TResult Function( SecurityPolicyResponse response)?  securityPolicyUpdateSuccess,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.rolesResponse,_that.securityPolicyResponse);case _CreateRoleSuccess() when createRoleSuccess != null:
return createRoleSuccess(_that.response);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.response);case _SecurityPolicyUpdateSuccess() when securityPolicyUpdateSuccess != null:
return securityPolicyUpdateSuccess(_that.response);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( RolesResponse rolesResponse,  SecurityPolicyResponse securityPolicyResponse)  loaded,required TResult Function( CreateRoleResponse response)  createRoleSuccess,required TResult Function( RoleActionResponse response)  actionSuccess,required TResult Function( SecurityPolicyResponse response)  securityPolicyUpdateSuccess,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.rolesResponse,_that.securityPolicyResponse);case _CreateRoleSuccess():
return createRoleSuccess(_that.response);case _ActionSuccess():
return actionSuccess(_that.response);case _SecurityPolicyUpdateSuccess():
return securityPolicyUpdateSuccess(_that.response);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( RolesResponse rolesResponse,  SecurityPolicyResponse securityPolicyResponse)?  loaded,TResult? Function( CreateRoleResponse response)?  createRoleSuccess,TResult? Function( RoleActionResponse response)?  actionSuccess,TResult? Function( SecurityPolicyResponse response)?  securityPolicyUpdateSuccess,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.rolesResponse,_that.securityPolicyResponse);case _CreateRoleSuccess() when createRoleSuccess != null:
return createRoleSuccess(_that.response);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.response);case _SecurityPolicyUpdateSuccess() when securityPolicyUpdateSuccess != null:
return securityPolicyUpdateSuccess(_that.response);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RolesAndSecurityState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RolesAndSecurityState.initial()';
}


}




/// @nodoc


class _Loading implements RolesAndSecurityState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RolesAndSecurityState.loading()';
}


}




/// @nodoc


class _Loaded implements RolesAndSecurityState {
  const _Loaded({required this.rolesResponse, required this.securityPolicyResponse});
  

 final  RolesResponse rolesResponse;
 final  SecurityPolicyResponse securityPolicyResponse;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.rolesResponse, rolesResponse) || other.rolesResponse == rolesResponse)&&(identical(other.securityPolicyResponse, securityPolicyResponse) || other.securityPolicyResponse == securityPolicyResponse));
}


@override
int get hashCode => Object.hash(runtimeType,rolesResponse,securityPolicyResponse);

@override
String toString() {
  return 'RolesAndSecurityState.loaded(rolesResponse: $rolesResponse, securityPolicyResponse: $securityPolicyResponse)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $RolesAndSecurityStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 RolesResponse rolesResponse, SecurityPolicyResponse securityPolicyResponse
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rolesResponse = null,Object? securityPolicyResponse = null,}) {
  return _then(_Loaded(
rolesResponse: null == rolesResponse ? _self.rolesResponse : rolesResponse // ignore: cast_nullable_to_non_nullable
as RolesResponse,securityPolicyResponse: null == securityPolicyResponse ? _self.securityPolicyResponse : securityPolicyResponse // ignore: cast_nullable_to_non_nullable
as SecurityPolicyResponse,
  ));
}


}

/// @nodoc


class _CreateRoleSuccess implements RolesAndSecurityState {
  const _CreateRoleSuccess(this.response);
  

 final  CreateRoleResponse response;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRoleSuccessCopyWith<_CreateRoleSuccess> get copyWith => __$CreateRoleSuccessCopyWithImpl<_CreateRoleSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRoleSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RolesAndSecurityState.createRoleSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$CreateRoleSuccessCopyWith<$Res> implements $RolesAndSecurityStateCopyWith<$Res> {
  factory _$CreateRoleSuccessCopyWith(_CreateRoleSuccess value, $Res Function(_CreateRoleSuccess) _then) = __$CreateRoleSuccessCopyWithImpl;
@useResult
$Res call({
 CreateRoleResponse response
});




}
/// @nodoc
class __$CreateRoleSuccessCopyWithImpl<$Res>
    implements _$CreateRoleSuccessCopyWith<$Res> {
  __$CreateRoleSuccessCopyWithImpl(this._self, this._then);

  final _CreateRoleSuccess _self;
  final $Res Function(_CreateRoleSuccess) _then;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_CreateRoleSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as CreateRoleResponse,
  ));
}


}

/// @nodoc


class _ActionSuccess implements RolesAndSecurityState {
  const _ActionSuccess(this.response);
  

 final  RoleActionResponse response;

/// Create a copy of RolesAndSecurityState
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
  return 'RolesAndSecurityState.actionSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $RolesAndSecurityStateCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(_ActionSuccess value, $Res Function(_ActionSuccess) _then) = __$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 RoleActionResponse response
});




}
/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(this._self, this._then);

  final _ActionSuccess _self;
  final $Res Function(_ActionSuccess) _then;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_ActionSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as RoleActionResponse,
  ));
}


}

/// @nodoc


class _SecurityPolicyUpdateSuccess implements RolesAndSecurityState {
  const _SecurityPolicyUpdateSuccess(this.response);
  

 final  SecurityPolicyResponse response;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityPolicyUpdateSuccessCopyWith<_SecurityPolicyUpdateSuccess> get copyWith => __$SecurityPolicyUpdateSuccessCopyWithImpl<_SecurityPolicyUpdateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityPolicyUpdateSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RolesAndSecurityState.securityPolicyUpdateSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class _$SecurityPolicyUpdateSuccessCopyWith<$Res> implements $RolesAndSecurityStateCopyWith<$Res> {
  factory _$SecurityPolicyUpdateSuccessCopyWith(_SecurityPolicyUpdateSuccess value, $Res Function(_SecurityPolicyUpdateSuccess) _then) = __$SecurityPolicyUpdateSuccessCopyWithImpl;
@useResult
$Res call({
 SecurityPolicyResponse response
});




}
/// @nodoc
class __$SecurityPolicyUpdateSuccessCopyWithImpl<$Res>
    implements _$SecurityPolicyUpdateSuccessCopyWith<$Res> {
  __$SecurityPolicyUpdateSuccessCopyWithImpl(this._self, this._then);

  final _SecurityPolicyUpdateSuccess _self;
  final $Res Function(_SecurityPolicyUpdateSuccess) _then;

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(_SecurityPolicyUpdateSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SecurityPolicyResponse,
  ));
}


}

/// @nodoc


class _Error implements RolesAndSecurityState {
  const _Error({required this.error});
  

 final  String error;

/// Create a copy of RolesAndSecurityState
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
  return 'RolesAndSecurityState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $RolesAndSecurityStateCopyWith<$Res> {
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

/// Create a copy of RolesAndSecurityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
