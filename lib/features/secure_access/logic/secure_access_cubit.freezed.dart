// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secure_access_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SecureAccessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecureAccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureAccessState()';
}


}

/// @nodoc
class $SecureAccessStateCopyWith<$Res>  {
$SecureAccessStateCopyWith(SecureAccessState _, $Res Function(SecureAccessState) __);
}


/// Adds pattern-matching-related methods to [SecureAccessState].
extension SecureAccessStatePatterns on SecureAccessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Ready value)?  ready,TResult Function( _Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Ready value)  ready,required TResult Function( _Success value)  success,}){
final _that = this;
switch (_that) {
case _Ready():
return ready(_that);case _Success():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Ready value)?  ready,TResult? Function( _Success value)?  success,}){
final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String? selectedPartner,  bool isSubmitting,  String? errorMessage)?  ready,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.email,_that.selectedPartner,_that.isSubmitting,_that.errorMessage);case _Success() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String? selectedPartner,  bool isSubmitting,  String? errorMessage)  ready,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _Ready():
return ready(_that.email,_that.selectedPartner,_that.isSubmitting,_that.errorMessage);case _Success():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String? selectedPartner,  bool isSubmitting,  String? errorMessage)?  ready,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _Ready() when ready != null:
return ready(_that.email,_that.selectedPartner,_that.isSubmitting,_that.errorMessage);case _Success() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _Ready implements SecureAccessState {
  const _Ready({this.email = '', this.selectedPartner, this.isSubmitting = false, this.errorMessage});
  

@JsonKey() final  String email;
 final  String? selectedPartner;
@JsonKey() final  bool isSubmitting;
 final  String? errorMessage;

/// Create a copy of SecureAccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.email, email) || other.email == email)&&(identical(other.selectedPartner, selectedPartner) || other.selectedPartner == selectedPartner)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,email,selectedPartner,isSubmitting,errorMessage);

@override
String toString() {
  return 'SecureAccessState.ready(email: $email, selectedPartner: $selectedPartner, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $SecureAccessStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 String email, String? selectedPartner, bool isSubmitting, String? errorMessage
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of SecureAccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? selectedPartner = freezed,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_Ready(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,selectedPartner: freezed == selectedPartner ? _self.selectedPartner : selectedPartner // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Success implements SecureAccessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SecureAccessState.success()';
}


}




// dart format on
