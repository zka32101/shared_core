// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppNotification {

 String get id; String get title; String get body; String get type;// 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
 DateTime get createdAt; bool get isRead; String? get actionUrl; Map<String, dynamic>? get data;
/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppNotificationCopyWith<AppNotification> get copyWith => _$AppNotificationCopyWithImpl<AppNotification>(this as AppNotification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,type,createdAt,isRead,actionUrl,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AppNotification(id: $id, title: $title, body: $body, type: $type, createdAt: $createdAt, isRead: $isRead, actionUrl: $actionUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class $AppNotificationCopyWith<$Res>  {
  factory $AppNotificationCopyWith(AppNotification value, $Res Function(AppNotification) _then) = _$AppNotificationCopyWithImpl;
@useResult
$Res call({
 String id, String title, String body, String type, DateTime createdAt, bool isRead, String? actionUrl, Map<String, dynamic>? data
});




}
/// @nodoc
class _$AppNotificationCopyWithImpl<$Res>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._self, this._then);

  final AppNotification _self;
  final $Res Function(AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? type = null,Object? createdAt = null,Object? isRead = null,Object? actionUrl = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppNotification].
extension AppNotificationPatterns on AppNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppNotification value)  $default,){
final _that = this;
switch (_that) {
case _AppNotification():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppNotification value)?  $default,){
final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String type,  DateTime createdAt,  bool isRead,  String? actionUrl,  Map<String, dynamic>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.type,_that.createdAt,_that.isRead,_that.actionUrl,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String body,  String type,  DateTime createdAt,  bool isRead,  String? actionUrl,  Map<String, dynamic>? data)  $default,) {final _that = this;
switch (_that) {
case _AppNotification():
return $default(_that.id,_that.title,_that.body,_that.type,_that.createdAt,_that.isRead,_that.actionUrl,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String body,  String type,  DateTime createdAt,  bool isRead,  String? actionUrl,  Map<String, dynamic>? data)?  $default,) {final _that = this;
switch (_that) {
case _AppNotification() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.type,_that.createdAt,_that.isRead,_that.actionUrl,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _AppNotification extends AppNotification {
  const _AppNotification({required this.id, required this.title, required this.body, required this.type, required this.createdAt, required this.isRead, this.actionUrl, final  Map<String, dynamic>? data}): _data = data,super._();
  

@override final  String id;
@override final  String title;
@override final  String body;
@override final  String type;
// 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
@override final  DateTime createdAt;
@override final  bool isRead;
@override final  String? actionUrl;
 final  Map<String, dynamic>? _data;
@override Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppNotificationCopyWith<_AppNotification> get copyWith => __$AppNotificationCopyWithImpl<_AppNotification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppNotification&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.actionUrl, actionUrl) || other.actionUrl == actionUrl)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,type,createdAt,isRead,actionUrl,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AppNotification(id: $id, title: $title, body: $body, type: $type, createdAt: $createdAt, isRead: $isRead, actionUrl: $actionUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AppNotificationCopyWith<$Res> implements $AppNotificationCopyWith<$Res> {
  factory _$AppNotificationCopyWith(_AppNotification value, $Res Function(_AppNotification) _then) = __$AppNotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String body, String type, DateTime createdAt, bool isRead, String? actionUrl, Map<String, dynamic>? data
});




}
/// @nodoc
class __$AppNotificationCopyWithImpl<$Res>
    implements _$AppNotificationCopyWith<$Res> {
  __$AppNotificationCopyWithImpl(this._self, this._then);

  final _AppNotification _self;
  final $Res Function(_AppNotification) _then;

/// Create a copy of AppNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? type = null,Object? createdAt = null,Object? isRead = null,Object? actionUrl = freezed,Object? data = freezed,}) {
  return _then(_AppNotification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,actionUrl: freezed == actionUrl ? _self.actionUrl : actionUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc
mixin _$ReminderConfig {

 bool get enableDailyReminder; bool get enableAchievementNotification; bool get enableFriendNotification; bool get enableWeeklyReport; bool get enableEngagementReminder; TimeOfDay get dailyReminderTime; int get weeklyReportDayOfWeek;
/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReminderConfigCopyWith<ReminderConfig> get copyWith => _$ReminderConfigCopyWithImpl<ReminderConfig>(this as ReminderConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReminderConfig&&(identical(other.enableDailyReminder, enableDailyReminder) || other.enableDailyReminder == enableDailyReminder)&&(identical(other.enableAchievementNotification, enableAchievementNotification) || other.enableAchievementNotification == enableAchievementNotification)&&(identical(other.enableFriendNotification, enableFriendNotification) || other.enableFriendNotification == enableFriendNotification)&&(identical(other.enableWeeklyReport, enableWeeklyReport) || other.enableWeeklyReport == enableWeeklyReport)&&(identical(other.enableEngagementReminder, enableEngagementReminder) || other.enableEngagementReminder == enableEngagementReminder)&&(identical(other.dailyReminderTime, dailyReminderTime) || other.dailyReminderTime == dailyReminderTime)&&(identical(other.weeklyReportDayOfWeek, weeklyReportDayOfWeek) || other.weeklyReportDayOfWeek == weeklyReportDayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,enableDailyReminder,enableAchievementNotification,enableFriendNotification,enableWeeklyReport,enableEngagementReminder,dailyReminderTime,weeklyReportDayOfWeek);

@override
String toString() {
  return 'ReminderConfig(enableDailyReminder: $enableDailyReminder, enableAchievementNotification: $enableAchievementNotification, enableFriendNotification: $enableFriendNotification, enableWeeklyReport: $enableWeeklyReport, enableEngagementReminder: $enableEngagementReminder, dailyReminderTime: $dailyReminderTime, weeklyReportDayOfWeek: $weeklyReportDayOfWeek)';
}


}

/// @nodoc
abstract mixin class $ReminderConfigCopyWith<$Res>  {
  factory $ReminderConfigCopyWith(ReminderConfig value, $Res Function(ReminderConfig) _then) = _$ReminderConfigCopyWithImpl;
@useResult
$Res call({
 bool enableDailyReminder, bool enableAchievementNotification, bool enableFriendNotification, bool enableWeeklyReport, bool enableEngagementReminder, TimeOfDay dailyReminderTime, int weeklyReportDayOfWeek
});


$TimeOfDayCopyWith<$Res> get dailyReminderTime;

}
/// @nodoc
class _$ReminderConfigCopyWithImpl<$Res>
    implements $ReminderConfigCopyWith<$Res> {
  _$ReminderConfigCopyWithImpl(this._self, this._then);

  final ReminderConfig _self;
  final $Res Function(ReminderConfig) _then;

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enableDailyReminder = null,Object? enableAchievementNotification = null,Object? enableFriendNotification = null,Object? enableWeeklyReport = null,Object? enableEngagementReminder = null,Object? dailyReminderTime = null,Object? weeklyReportDayOfWeek = null,}) {
  return _then(_self.copyWith(
enableDailyReminder: null == enableDailyReminder ? _self.enableDailyReminder : enableDailyReminder // ignore: cast_nullable_to_non_nullable
as bool,enableAchievementNotification: null == enableAchievementNotification ? _self.enableAchievementNotification : enableAchievementNotification // ignore: cast_nullable_to_non_nullable
as bool,enableFriendNotification: null == enableFriendNotification ? _self.enableFriendNotification : enableFriendNotification // ignore: cast_nullable_to_non_nullable
as bool,enableWeeklyReport: null == enableWeeklyReport ? _self.enableWeeklyReport : enableWeeklyReport // ignore: cast_nullable_to_non_nullable
as bool,enableEngagementReminder: null == enableEngagementReminder ? _self.enableEngagementReminder : enableEngagementReminder // ignore: cast_nullable_to_non_nullable
as bool,dailyReminderTime: null == dailyReminderTime ? _self.dailyReminderTime : dailyReminderTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay,weeklyReportDayOfWeek: null == weeklyReportDayOfWeek ? _self.weeklyReportDayOfWeek : weeklyReportDayOfWeek // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<$Res> get dailyReminderTime {
  
  return $TimeOfDayCopyWith<$Res>(_self.dailyReminderTime, (value) {
    return _then(_self.copyWith(dailyReminderTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReminderConfig].
extension ReminderConfigPatterns on ReminderConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReminderConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReminderConfig value)  $default,){
final _that = this;
switch (_that) {
case _ReminderConfig():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReminderConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool enableDailyReminder,  bool enableAchievementNotification,  bool enableFriendNotification,  bool enableWeeklyReport,  bool enableEngagementReminder,  TimeOfDay dailyReminderTime,  int weeklyReportDayOfWeek)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that.enableDailyReminder,_that.enableAchievementNotification,_that.enableFriendNotification,_that.enableWeeklyReport,_that.enableEngagementReminder,_that.dailyReminderTime,_that.weeklyReportDayOfWeek);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool enableDailyReminder,  bool enableAchievementNotification,  bool enableFriendNotification,  bool enableWeeklyReport,  bool enableEngagementReminder,  TimeOfDay dailyReminderTime,  int weeklyReportDayOfWeek)  $default,) {final _that = this;
switch (_that) {
case _ReminderConfig():
return $default(_that.enableDailyReminder,_that.enableAchievementNotification,_that.enableFriendNotification,_that.enableWeeklyReport,_that.enableEngagementReminder,_that.dailyReminderTime,_that.weeklyReportDayOfWeek);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool enableDailyReminder,  bool enableAchievementNotification,  bool enableFriendNotification,  bool enableWeeklyReport,  bool enableEngagementReminder,  TimeOfDay dailyReminderTime,  int weeklyReportDayOfWeek)?  $default,) {final _that = this;
switch (_that) {
case _ReminderConfig() when $default != null:
return $default(_that.enableDailyReminder,_that.enableAchievementNotification,_that.enableFriendNotification,_that.enableWeeklyReport,_that.enableEngagementReminder,_that.dailyReminderTime,_that.weeklyReportDayOfWeek);case _:
  return null;

}
}

}

/// @nodoc


class _ReminderConfig extends ReminderConfig {
  const _ReminderConfig({required this.enableDailyReminder, required this.enableAchievementNotification, required this.enableFriendNotification, required this.enableWeeklyReport, required this.enableEngagementReminder, required this.dailyReminderTime, required this.weeklyReportDayOfWeek}): super._();
  

@override final  bool enableDailyReminder;
@override final  bool enableAchievementNotification;
@override final  bool enableFriendNotification;
@override final  bool enableWeeklyReport;
@override final  bool enableEngagementReminder;
@override final  TimeOfDay dailyReminderTime;
@override final  int weeklyReportDayOfWeek;

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReminderConfigCopyWith<_ReminderConfig> get copyWith => __$ReminderConfigCopyWithImpl<_ReminderConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReminderConfig&&(identical(other.enableDailyReminder, enableDailyReminder) || other.enableDailyReminder == enableDailyReminder)&&(identical(other.enableAchievementNotification, enableAchievementNotification) || other.enableAchievementNotification == enableAchievementNotification)&&(identical(other.enableFriendNotification, enableFriendNotification) || other.enableFriendNotification == enableFriendNotification)&&(identical(other.enableWeeklyReport, enableWeeklyReport) || other.enableWeeklyReport == enableWeeklyReport)&&(identical(other.enableEngagementReminder, enableEngagementReminder) || other.enableEngagementReminder == enableEngagementReminder)&&(identical(other.dailyReminderTime, dailyReminderTime) || other.dailyReminderTime == dailyReminderTime)&&(identical(other.weeklyReportDayOfWeek, weeklyReportDayOfWeek) || other.weeklyReportDayOfWeek == weeklyReportDayOfWeek));
}


@override
int get hashCode => Object.hash(runtimeType,enableDailyReminder,enableAchievementNotification,enableFriendNotification,enableWeeklyReport,enableEngagementReminder,dailyReminderTime,weeklyReportDayOfWeek);

@override
String toString() {
  return 'ReminderConfig(enableDailyReminder: $enableDailyReminder, enableAchievementNotification: $enableAchievementNotification, enableFriendNotification: $enableFriendNotification, enableWeeklyReport: $enableWeeklyReport, enableEngagementReminder: $enableEngagementReminder, dailyReminderTime: $dailyReminderTime, weeklyReportDayOfWeek: $weeklyReportDayOfWeek)';
}


}

/// @nodoc
abstract mixin class _$ReminderConfigCopyWith<$Res> implements $ReminderConfigCopyWith<$Res> {
  factory _$ReminderConfigCopyWith(_ReminderConfig value, $Res Function(_ReminderConfig) _then) = __$ReminderConfigCopyWithImpl;
@override @useResult
$Res call({
 bool enableDailyReminder, bool enableAchievementNotification, bool enableFriendNotification, bool enableWeeklyReport, bool enableEngagementReminder, TimeOfDay dailyReminderTime, int weeklyReportDayOfWeek
});


@override $TimeOfDayCopyWith<$Res> get dailyReminderTime;

}
/// @nodoc
class __$ReminderConfigCopyWithImpl<$Res>
    implements _$ReminderConfigCopyWith<$Res> {
  __$ReminderConfigCopyWithImpl(this._self, this._then);

  final _ReminderConfig _self;
  final $Res Function(_ReminderConfig) _then;

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enableDailyReminder = null,Object? enableAchievementNotification = null,Object? enableFriendNotification = null,Object? enableWeeklyReport = null,Object? enableEngagementReminder = null,Object? dailyReminderTime = null,Object? weeklyReportDayOfWeek = null,}) {
  return _then(_ReminderConfig(
enableDailyReminder: null == enableDailyReminder ? _self.enableDailyReminder : enableDailyReminder // ignore: cast_nullable_to_non_nullable
as bool,enableAchievementNotification: null == enableAchievementNotification ? _self.enableAchievementNotification : enableAchievementNotification // ignore: cast_nullable_to_non_nullable
as bool,enableFriendNotification: null == enableFriendNotification ? _self.enableFriendNotification : enableFriendNotification // ignore: cast_nullable_to_non_nullable
as bool,enableWeeklyReport: null == enableWeeklyReport ? _self.enableWeeklyReport : enableWeeklyReport // ignore: cast_nullable_to_non_nullable
as bool,enableEngagementReminder: null == enableEngagementReminder ? _self.enableEngagementReminder : enableEngagementReminder // ignore: cast_nullable_to_non_nullable
as bool,dailyReminderTime: null == dailyReminderTime ? _self.dailyReminderTime : dailyReminderTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay,weeklyReportDayOfWeek: null == weeklyReportDayOfWeek ? _self.weeklyReportDayOfWeek : weeklyReportDayOfWeek // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ReminderConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<$Res> get dailyReminderTime {
  
  return $TimeOfDayCopyWith<$Res>(_self.dailyReminderTime, (value) {
    return _then(_self.copyWith(dailyReminderTime: value));
  });
}
}

/// @nodoc
mixin _$TimeOfDay {

 int get hour; int get minute;
/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<TimeOfDay> get copyWith => _$TimeOfDayCopyWithImpl<TimeOfDay>(this as TimeOfDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOfDay&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}


@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString() {
  return 'TimeOfDay(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class $TimeOfDayCopyWith<$Res>  {
  factory $TimeOfDayCopyWith(TimeOfDay value, $Res Function(TimeOfDay) _then) = _$TimeOfDayCopyWithImpl;
@useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class _$TimeOfDayCopyWithImpl<$Res>
    implements $TimeOfDayCopyWith<$Res> {
  _$TimeOfDayCopyWithImpl(this._self, this._then);

  final TimeOfDay _self;
  final $Res Function(TimeOfDay) _then;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_self.copyWith(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeOfDay].
extension TimeOfDayPatterns on TimeOfDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeOfDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeOfDay value)  $default,){
final _that = this;
switch (_that) {
case _TimeOfDay():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeOfDay value)?  $default,){
final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hour,  int minute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that.hour,_that.minute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hour,  int minute)  $default,) {final _that = this;
switch (_that) {
case _TimeOfDay():
return $default(_that.hour,_that.minute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hour,  int minute)?  $default,) {final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that.hour,_that.minute);case _:
  return null;

}
}

}

/// @nodoc


class _TimeOfDay extends TimeOfDay {
  const _TimeOfDay({required this.hour, required this.minute}): super._();
  

@override final  int hour;
@override final  int minute;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeOfDayCopyWith<_TimeOfDay> get copyWith => __$TimeOfDayCopyWithImpl<_TimeOfDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeOfDay&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}


@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString() {
  return 'TimeOfDay(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class _$TimeOfDayCopyWith<$Res> implements $TimeOfDayCopyWith<$Res> {
  factory _$TimeOfDayCopyWith(_TimeOfDay value, $Res Function(_TimeOfDay) _then) = __$TimeOfDayCopyWithImpl;
@override @useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class __$TimeOfDayCopyWithImpl<$Res>
    implements _$TimeOfDayCopyWith<$Res> {
  __$TimeOfDayCopyWithImpl(this._self, this._then);

  final _TimeOfDay _self;
  final $Res Function(_TimeOfDay) _then;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_TimeOfDay(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$NotificationStats {

 int get totalNotifications; int get unreadCount; int get achievementCount; int get friendRequestCount; DateTime get lastCheckAt;
/// Create a copy of NotificationStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStatsCopyWith<NotificationStats> get copyWith => _$NotificationStatsCopyWithImpl<NotificationStats>(this as NotificationStats, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationStats&&(identical(other.totalNotifications, totalNotifications) || other.totalNotifications == totalNotifications)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.achievementCount, achievementCount) || other.achievementCount == achievementCount)&&(identical(other.friendRequestCount, friendRequestCount) || other.friendRequestCount == friendRequestCount)&&(identical(other.lastCheckAt, lastCheckAt) || other.lastCheckAt == lastCheckAt));
}


@override
int get hashCode => Object.hash(runtimeType,totalNotifications,unreadCount,achievementCount,friendRequestCount,lastCheckAt);

@override
String toString() {
  return 'NotificationStats(totalNotifications: $totalNotifications, unreadCount: $unreadCount, achievementCount: $achievementCount, friendRequestCount: $friendRequestCount, lastCheckAt: $lastCheckAt)';
}


}

/// @nodoc
abstract mixin class $NotificationStatsCopyWith<$Res>  {
  factory $NotificationStatsCopyWith(NotificationStats value, $Res Function(NotificationStats) _then) = _$NotificationStatsCopyWithImpl;
@useResult
$Res call({
 int totalNotifications, int unreadCount, int achievementCount, int friendRequestCount, DateTime lastCheckAt
});




}
/// @nodoc
class _$NotificationStatsCopyWithImpl<$Res>
    implements $NotificationStatsCopyWith<$Res> {
  _$NotificationStatsCopyWithImpl(this._self, this._then);

  final NotificationStats _self;
  final $Res Function(NotificationStats) _then;

/// Create a copy of NotificationStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalNotifications = null,Object? unreadCount = null,Object? achievementCount = null,Object? friendRequestCount = null,Object? lastCheckAt = null,}) {
  return _then(_self.copyWith(
totalNotifications: null == totalNotifications ? _self.totalNotifications : totalNotifications // ignore: cast_nullable_to_non_nullable
as int,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,achievementCount: null == achievementCount ? _self.achievementCount : achievementCount // ignore: cast_nullable_to_non_nullable
as int,friendRequestCount: null == friendRequestCount ? _self.friendRequestCount : friendRequestCount // ignore: cast_nullable_to_non_nullable
as int,lastCheckAt: null == lastCheckAt ? _self.lastCheckAt : lastCheckAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationStats].
extension NotificationStatsPatterns on NotificationStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationStats() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationStats value)  $default,){
final _that = this;
switch (_that) {
case _NotificationStats():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationStats value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationStats() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalNotifications,  int unreadCount,  int achievementCount,  int friendRequestCount,  DateTime lastCheckAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationStats() when $default != null:
return $default(_that.totalNotifications,_that.unreadCount,_that.achievementCount,_that.friendRequestCount,_that.lastCheckAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalNotifications,  int unreadCount,  int achievementCount,  int friendRequestCount,  DateTime lastCheckAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationStats():
return $default(_that.totalNotifications,_that.unreadCount,_that.achievementCount,_that.friendRequestCount,_that.lastCheckAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalNotifications,  int unreadCount,  int achievementCount,  int friendRequestCount,  DateTime lastCheckAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationStats() when $default != null:
return $default(_that.totalNotifications,_that.unreadCount,_that.achievementCount,_that.friendRequestCount,_that.lastCheckAt);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationStats extends NotificationStats {
  const _NotificationStats({required this.totalNotifications, required this.unreadCount, required this.achievementCount, required this.friendRequestCount, required this.lastCheckAt}): super._();
  

@override final  int totalNotifications;
@override final  int unreadCount;
@override final  int achievementCount;
@override final  int friendRequestCount;
@override final  DateTime lastCheckAt;

/// Create a copy of NotificationStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStatsCopyWith<_NotificationStats> get copyWith => __$NotificationStatsCopyWithImpl<_NotificationStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationStats&&(identical(other.totalNotifications, totalNotifications) || other.totalNotifications == totalNotifications)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.achievementCount, achievementCount) || other.achievementCount == achievementCount)&&(identical(other.friendRequestCount, friendRequestCount) || other.friendRequestCount == friendRequestCount)&&(identical(other.lastCheckAt, lastCheckAt) || other.lastCheckAt == lastCheckAt));
}


@override
int get hashCode => Object.hash(runtimeType,totalNotifications,unreadCount,achievementCount,friendRequestCount,lastCheckAt);

@override
String toString() {
  return 'NotificationStats(totalNotifications: $totalNotifications, unreadCount: $unreadCount, achievementCount: $achievementCount, friendRequestCount: $friendRequestCount, lastCheckAt: $lastCheckAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationStatsCopyWith<$Res> implements $NotificationStatsCopyWith<$Res> {
  factory _$NotificationStatsCopyWith(_NotificationStats value, $Res Function(_NotificationStats) _then) = __$NotificationStatsCopyWithImpl;
@override @useResult
$Res call({
 int totalNotifications, int unreadCount, int achievementCount, int friendRequestCount, DateTime lastCheckAt
});




}
/// @nodoc
class __$NotificationStatsCopyWithImpl<$Res>
    implements _$NotificationStatsCopyWith<$Res> {
  __$NotificationStatsCopyWithImpl(this._self, this._then);

  final _NotificationStats _self;
  final $Res Function(_NotificationStats) _then;

/// Create a copy of NotificationStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalNotifications = null,Object? unreadCount = null,Object? achievementCount = null,Object? friendRequestCount = null,Object? lastCheckAt = null,}) {
  return _then(_NotificationStats(
totalNotifications: null == totalNotifications ? _self.totalNotifications : totalNotifications // ignore: cast_nullable_to_non_nullable
as int,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,achievementCount: null == achievementCount ? _self.achievementCount : achievementCount // ignore: cast_nullable_to_non_nullable
as int,friendRequestCount: null == friendRequestCount ? _self.friendRequestCount : friendRequestCount // ignore: cast_nullable_to_non_nullable
as int,lastCheckAt: null == lastCheckAt ? _self.lastCheckAt : lastCheckAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
