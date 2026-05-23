// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState()';
}


}

/// @nodoc
class $SettingsStateCopyWith<$Res>  {
$SettingsStateCopyWith(SettingsState _, $Res Function(SettingsState) __);
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Ready value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Ready value)  ready,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Ready():
return ready(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Ready value)?  ready,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Ready() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( SettingsViewData viewData,  String selectedDepartment,  String selectedLanguage,  bool biometricEnabled,  bool sessionTimeoutEnabled,  bool criticalAlertsEnabled,  bool dailySummaryEnabled,  bool teamActivityEnabled,  bool hasUnsavedChanges)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Ready() when ready != null:
return ready(_that.viewData,_that.selectedDepartment,_that.selectedLanguage,_that.biometricEnabled,_that.sessionTimeoutEnabled,_that.criticalAlertsEnabled,_that.dailySummaryEnabled,_that.teamActivityEnabled,_that.hasUnsavedChanges);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( SettingsViewData viewData,  String selectedDepartment,  String selectedLanguage,  bool biometricEnabled,  bool sessionTimeoutEnabled,  bool criticalAlertsEnabled,  bool dailySummaryEnabled,  bool teamActivityEnabled,  bool hasUnsavedChanges)  ready,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Ready():
return ready(_that.viewData,_that.selectedDepartment,_that.selectedLanguage,_that.biometricEnabled,_that.sessionTimeoutEnabled,_that.criticalAlertsEnabled,_that.dailySummaryEnabled,_that.teamActivityEnabled,_that.hasUnsavedChanges);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( SettingsViewData viewData,  String selectedDepartment,  String selectedLanguage,  bool biometricEnabled,  bool sessionTimeoutEnabled,  bool criticalAlertsEnabled,  bool dailySummaryEnabled,  bool teamActivityEnabled,  bool hasUnsavedChanges)?  ready,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Ready() when ready != null:
return ready(_that.viewData,_that.selectedDepartment,_that.selectedLanguage,_that.biometricEnabled,_that.sessionTimeoutEnabled,_that.criticalAlertsEnabled,_that.dailySummaryEnabled,_that.teamActivityEnabled,_that.hasUnsavedChanges);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements SettingsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsState.loading()';
}


}




/// @nodoc


class _Ready implements SettingsState {
  const _Ready({required this.viewData, required this.selectedDepartment, required this.selectedLanguage, required this.biometricEnabled, required this.sessionTimeoutEnabled, required this.criticalAlertsEnabled, required this.dailySummaryEnabled, required this.teamActivityEnabled, required this.hasUnsavedChanges});
  

 final  SettingsViewData viewData;
 final  String selectedDepartment;
 final  String selectedLanguage;
 final  bool biometricEnabled;
 final  bool sessionTimeoutEnabled;
 final  bool criticalAlertsEnabled;
 final  bool dailySummaryEnabled;
 final  bool teamActivityEnabled;
 final  bool hasUnsavedChanges;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadyCopyWith<_Ready> get copyWith => __$ReadyCopyWithImpl<_Ready>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ready&&(identical(other.viewData, viewData) || other.viewData == viewData)&&(identical(other.selectedDepartment, selectedDepartment) || other.selectedDepartment == selectedDepartment)&&(identical(other.selectedLanguage, selectedLanguage) || other.selectedLanguage == selectedLanguage)&&(identical(other.biometricEnabled, biometricEnabled) || other.biometricEnabled == biometricEnabled)&&(identical(other.sessionTimeoutEnabled, sessionTimeoutEnabled) || other.sessionTimeoutEnabled == sessionTimeoutEnabled)&&(identical(other.criticalAlertsEnabled, criticalAlertsEnabled) || other.criticalAlertsEnabled == criticalAlertsEnabled)&&(identical(other.dailySummaryEnabled, dailySummaryEnabled) || other.dailySummaryEnabled == dailySummaryEnabled)&&(identical(other.teamActivityEnabled, teamActivityEnabled) || other.teamActivityEnabled == teamActivityEnabled)&&(identical(other.hasUnsavedChanges, hasUnsavedChanges) || other.hasUnsavedChanges == hasUnsavedChanges));
}


@override
int get hashCode => Object.hash(runtimeType,viewData,selectedDepartment,selectedLanguage,biometricEnabled,sessionTimeoutEnabled,criticalAlertsEnabled,dailySummaryEnabled,teamActivityEnabled,hasUnsavedChanges);

@override
String toString() {
  return 'SettingsState.ready(viewData: $viewData, selectedDepartment: $selectedDepartment, selectedLanguage: $selectedLanguage, biometricEnabled: $biometricEnabled, sessionTimeoutEnabled: $sessionTimeoutEnabled, criticalAlertsEnabled: $criticalAlertsEnabled, dailySummaryEnabled: $dailySummaryEnabled, teamActivityEnabled: $teamActivityEnabled, hasUnsavedChanges: $hasUnsavedChanges)';
}


}

/// @nodoc
abstract mixin class _$ReadyCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) _then) = __$ReadyCopyWithImpl;
@useResult
$Res call({
 SettingsViewData viewData, String selectedDepartment, String selectedLanguage, bool biometricEnabled, bool sessionTimeoutEnabled, bool criticalAlertsEnabled, bool dailySummaryEnabled, bool teamActivityEnabled, bool hasUnsavedChanges
});




}
/// @nodoc
class __$ReadyCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(this._self, this._then);

  final _Ready _self;
  final $Res Function(_Ready) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewData = null,Object? selectedDepartment = null,Object? selectedLanguage = null,Object? biometricEnabled = null,Object? sessionTimeoutEnabled = null,Object? criticalAlertsEnabled = null,Object? dailySummaryEnabled = null,Object? teamActivityEnabled = null,Object? hasUnsavedChanges = null,}) {
  return _then(_Ready(
viewData: null == viewData ? _self.viewData : viewData // ignore: cast_nullable_to_non_nullable
as SettingsViewData,selectedDepartment: null == selectedDepartment ? _self.selectedDepartment : selectedDepartment // ignore: cast_nullable_to_non_nullable
as String,selectedLanguage: null == selectedLanguage ? _self.selectedLanguage : selectedLanguage // ignore: cast_nullable_to_non_nullable
as String,biometricEnabled: null == biometricEnabled ? _self.biometricEnabled : biometricEnabled // ignore: cast_nullable_to_non_nullable
as bool,sessionTimeoutEnabled: null == sessionTimeoutEnabled ? _self.sessionTimeoutEnabled : sessionTimeoutEnabled // ignore: cast_nullable_to_non_nullable
as bool,criticalAlertsEnabled: null == criticalAlertsEnabled ? _self.criticalAlertsEnabled : criticalAlertsEnabled // ignore: cast_nullable_to_non_nullable
as bool,dailySummaryEnabled: null == dailySummaryEnabled ? _self.dailySummaryEnabled : dailySummaryEnabled // ignore: cast_nullable_to_non_nullable
as bool,teamActivityEnabled: null == teamActivityEnabled ? _self.teamActivityEnabled : teamActivityEnabled // ignore: cast_nullable_to_non_nullable
as bool,hasUnsavedChanges: null == hasUnsavedChanges ? _self.hasUnsavedChanges : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
