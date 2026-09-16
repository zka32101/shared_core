// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppNotification {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get type =>
      throw _privateConstructorUsedError; // 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  String? get actionUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppNotificationCopyWith<AppNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNotificationCopyWith<$Res> {
  factory $AppNotificationCopyWith(
    AppNotification value,
    $Res Function(AppNotification) then,
  ) = _$AppNotificationCopyWithImpl<$Res, AppNotification>;
  @useResult
  $Res call({
    String id,
    String title,
    String body,
    String type,
    DateTime createdAt,
    bool isRead,
    String? actionUrl,
    Map<String, dynamic>? data,
  });
}

/// @nodoc
class _$AppNotificationCopyWithImpl<$Res, $Val extends AppNotification>
    implements $AppNotificationCopyWith<$Res> {
  _$AppNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? createdAt = null,
    Object? isRead = null,
    Object? actionUrl = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isRead: null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool,
            actionUrl: freezed == actionUrl
                ? _value.actionUrl
                : actionUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppNotificationImplCopyWith<$Res>
    implements $AppNotificationCopyWith<$Res> {
  factory _$$AppNotificationImplCopyWith(
    _$AppNotificationImpl value,
    $Res Function(_$AppNotificationImpl) then,
  ) = __$$AppNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String body,
    String type,
    DateTime createdAt,
    bool isRead,
    String? actionUrl,
    Map<String, dynamic>? data,
  });
}

/// @nodoc
class __$$AppNotificationImplCopyWithImpl<$Res>
    extends _$AppNotificationCopyWithImpl<$Res, _$AppNotificationImpl>
    implements _$$AppNotificationImplCopyWith<$Res> {
  __$$AppNotificationImplCopyWithImpl(
    _$AppNotificationImpl _value,
    $Res Function(_$AppNotificationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? type = null,
    Object? createdAt = null,
    Object? isRead = null,
    Object? actionUrl = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _$AppNotificationImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isRead: null == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool,
        actionUrl: freezed == actionUrl
            ? _value.actionUrl
            : actionUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$AppNotificationImpl extends _AppNotification {
  const _$AppNotificationImpl({
    required this.id,
    required this.title,
    required this.body,
    required this.type,
    required this.createdAt,
    required this.isRead,
    this.actionUrl,
    final Map<String, dynamic>? data,
  }) : _data = data,
       super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String type;
  // 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
  @override
  final DateTime createdAt;
  @override
  final bool isRead;
  @override
  final String? actionUrl;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AppNotification(id: $id, title: $title, body: $body, type: $type, createdAt: $createdAt, isRead: $isRead, actionUrl: $actionUrl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.actionUrl, actionUrl) ||
                other.actionUrl == actionUrl) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    body,
    type,
    createdAt,
    isRead,
    actionUrl,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      __$$AppNotificationImplCopyWithImpl<_$AppNotificationImpl>(
        this,
        _$identity,
      );
}

abstract class _AppNotification extends AppNotification {
  const factory _AppNotification({
    required final String id,
    required final String title,
    required final String body,
    required final String type,
    required final DateTime createdAt,
    required final bool isRead,
    final String? actionUrl,
    final Map<String, dynamic>? data,
  }) = _$AppNotificationImpl;
  const _AppNotification._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get type; // 'daily_reminder', 'achievement', 'friend_request', 'weekly_summary', 'engagement'
  @override
  DateTime get createdAt;
  @override
  bool get isRead;
  @override
  String? get actionUrl;
  @override
  Map<String, dynamic>? get data;

  /// Create a copy of AppNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppNotificationImplCopyWith<_$AppNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReminderConfig {
  bool get enableDailyReminder => throw _privateConstructorUsedError;
  bool get enableAchievementNotification => throw _privateConstructorUsedError;
  bool get enableFriendNotification => throw _privateConstructorUsedError;
  bool get enableWeeklyReport => throw _privateConstructorUsedError;
  bool get enableEngagementReminder => throw _privateConstructorUsedError;
  TimeOfDay get dailyReminderTime => throw _privateConstructorUsedError;
  int get weeklyReportDayOfWeek => throw _privateConstructorUsedError;

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderConfigCopyWith<ReminderConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderConfigCopyWith<$Res> {
  factory $ReminderConfigCopyWith(
    ReminderConfig value,
    $Res Function(ReminderConfig) then,
  ) = _$ReminderConfigCopyWithImpl<$Res, ReminderConfig>;
  @useResult
  $Res call({
    bool enableDailyReminder,
    bool enableAchievementNotification,
    bool enableFriendNotification,
    bool enableWeeklyReport,
    bool enableEngagementReminder,
    TimeOfDay dailyReminderTime,
    int weeklyReportDayOfWeek,
  });

  $TimeOfDayCopyWith<$Res> get dailyReminderTime;
}

/// @nodoc
class _$ReminderConfigCopyWithImpl<$Res, $Val extends ReminderConfig>
    implements $ReminderConfigCopyWith<$Res> {
  _$ReminderConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableDailyReminder = null,
    Object? enableAchievementNotification = null,
    Object? enableFriendNotification = null,
    Object? enableWeeklyReport = null,
    Object? enableEngagementReminder = null,
    Object? dailyReminderTime = null,
    Object? weeklyReportDayOfWeek = null,
  }) {
    return _then(
      _value.copyWith(
            enableDailyReminder: null == enableDailyReminder
                ? _value.enableDailyReminder
                : enableDailyReminder // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableAchievementNotification: null == enableAchievementNotification
                ? _value.enableAchievementNotification
                : enableAchievementNotification // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableFriendNotification: null == enableFriendNotification
                ? _value.enableFriendNotification
                : enableFriendNotification // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableWeeklyReport: null == enableWeeklyReport
                ? _value.enableWeeklyReport
                : enableWeeklyReport // ignore: cast_nullable_to_non_nullable
                      as bool,
            enableEngagementReminder: null == enableEngagementReminder
                ? _value.enableEngagementReminder
                : enableEngagementReminder // ignore: cast_nullable_to_non_nullable
                      as bool,
            dailyReminderTime: null == dailyReminderTime
                ? _value.dailyReminderTime
                : dailyReminderTime // ignore: cast_nullable_to_non_nullable
                      as TimeOfDay,
            weeklyReportDayOfWeek: null == weeklyReportDayOfWeek
                ? _value.weeklyReportDayOfWeek
                : weeklyReportDayOfWeek // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeOfDayCopyWith<$Res> get dailyReminderTime {
    return $TimeOfDayCopyWith<$Res>(_value.dailyReminderTime, (value) {
      return _then(_value.copyWith(dailyReminderTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReminderConfigImplCopyWith<$Res>
    implements $ReminderConfigCopyWith<$Res> {
  factory _$$ReminderConfigImplCopyWith(
    _$ReminderConfigImpl value,
    $Res Function(_$ReminderConfigImpl) then,
  ) = __$$ReminderConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool enableDailyReminder,
    bool enableAchievementNotification,
    bool enableFriendNotification,
    bool enableWeeklyReport,
    bool enableEngagementReminder,
    TimeOfDay dailyReminderTime,
    int weeklyReportDayOfWeek,
  });

  @override
  $TimeOfDayCopyWith<$Res> get dailyReminderTime;
}

/// @nodoc
class __$$ReminderConfigImplCopyWithImpl<$Res>
    extends _$ReminderConfigCopyWithImpl<$Res, _$ReminderConfigImpl>
    implements _$$ReminderConfigImplCopyWith<$Res> {
  __$$ReminderConfigImplCopyWithImpl(
    _$ReminderConfigImpl _value,
    $Res Function(_$ReminderConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enableDailyReminder = null,
    Object? enableAchievementNotification = null,
    Object? enableFriendNotification = null,
    Object? enableWeeklyReport = null,
    Object? enableEngagementReminder = null,
    Object? dailyReminderTime = null,
    Object? weeklyReportDayOfWeek = null,
  }) {
    return _then(
      _$ReminderConfigImpl(
        enableDailyReminder: null == enableDailyReminder
            ? _value.enableDailyReminder
            : enableDailyReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableAchievementNotification: null == enableAchievementNotification
            ? _value.enableAchievementNotification
            : enableAchievementNotification // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableFriendNotification: null == enableFriendNotification
            ? _value.enableFriendNotification
            : enableFriendNotification // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableWeeklyReport: null == enableWeeklyReport
            ? _value.enableWeeklyReport
            : enableWeeklyReport // ignore: cast_nullable_to_non_nullable
                  as bool,
        enableEngagementReminder: null == enableEngagementReminder
            ? _value.enableEngagementReminder
            : enableEngagementReminder // ignore: cast_nullable_to_non_nullable
                  as bool,
        dailyReminderTime: null == dailyReminderTime
            ? _value.dailyReminderTime
            : dailyReminderTime // ignore: cast_nullable_to_non_nullable
                  as TimeOfDay,
        weeklyReportDayOfWeek: null == weeklyReportDayOfWeek
            ? _value.weeklyReportDayOfWeek
            : weeklyReportDayOfWeek // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ReminderConfigImpl extends _ReminderConfig {
  const _$ReminderConfigImpl({
    required this.enableDailyReminder,
    required this.enableAchievementNotification,
    required this.enableFriendNotification,
    required this.enableWeeklyReport,
    required this.enableEngagementReminder,
    required this.dailyReminderTime,
    required this.weeklyReportDayOfWeek,
  }) : super._();

  @override
  final bool enableDailyReminder;
  @override
  final bool enableAchievementNotification;
  @override
  final bool enableFriendNotification;
  @override
  final bool enableWeeklyReport;
  @override
  final bool enableEngagementReminder;
  @override
  final TimeOfDay dailyReminderTime;
  @override
  final int weeklyReportDayOfWeek;

  @override
  String toString() {
    return 'ReminderConfig(enableDailyReminder: $enableDailyReminder, enableAchievementNotification: $enableAchievementNotification, enableFriendNotification: $enableFriendNotification, enableWeeklyReport: $enableWeeklyReport, enableEngagementReminder: $enableEngagementReminder, dailyReminderTime: $dailyReminderTime, weeklyReportDayOfWeek: $weeklyReportDayOfWeek)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderConfigImpl &&
            (identical(other.enableDailyReminder, enableDailyReminder) ||
                other.enableDailyReminder == enableDailyReminder) &&
            (identical(
                  other.enableAchievementNotification,
                  enableAchievementNotification,
                ) ||
                other.enableAchievementNotification ==
                    enableAchievementNotification) &&
            (identical(
                  other.enableFriendNotification,
                  enableFriendNotification,
                ) ||
                other.enableFriendNotification == enableFriendNotification) &&
            (identical(other.enableWeeklyReport, enableWeeklyReport) ||
                other.enableWeeklyReport == enableWeeklyReport) &&
            (identical(
                  other.enableEngagementReminder,
                  enableEngagementReminder,
                ) ||
                other.enableEngagementReminder == enableEngagementReminder) &&
            (identical(other.dailyReminderTime, dailyReminderTime) ||
                other.dailyReminderTime == dailyReminderTime) &&
            (identical(other.weeklyReportDayOfWeek, weeklyReportDayOfWeek) ||
                other.weeklyReportDayOfWeek == weeklyReportDayOfWeek));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    enableDailyReminder,
    enableAchievementNotification,
    enableFriendNotification,
    enableWeeklyReport,
    enableEngagementReminder,
    dailyReminderTime,
    weeklyReportDayOfWeek,
  );

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderConfigImplCopyWith<_$ReminderConfigImpl> get copyWith =>
      __$$ReminderConfigImplCopyWithImpl<_$ReminderConfigImpl>(
        this,
        _$identity,
      );
}

abstract class _ReminderConfig extends ReminderConfig {
  const factory _ReminderConfig({
    required final bool enableDailyReminder,
    required final bool enableAchievementNotification,
    required final bool enableFriendNotification,
    required final bool enableWeeklyReport,
    required final bool enableEngagementReminder,
    required final TimeOfDay dailyReminderTime,
    required final int weeklyReportDayOfWeek,
  }) = _$ReminderConfigImpl;
  const _ReminderConfig._() : super._();

  @override
  bool get enableDailyReminder;
  @override
  bool get enableAchievementNotification;
  @override
  bool get enableFriendNotification;
  @override
  bool get enableWeeklyReport;
  @override
  bool get enableEngagementReminder;
  @override
  TimeOfDay get dailyReminderTime;
  @override
  int get weeklyReportDayOfWeek;

  /// Create a copy of ReminderConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderConfigImplCopyWith<_$ReminderConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeOfDay {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  /// Create a copy of TimeOfDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeOfDayCopyWith<TimeOfDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeOfDayCopyWith<$Res> {
  factory $TimeOfDayCopyWith(TimeOfDay value, $Res Function(TimeOfDay) then) =
      _$TimeOfDayCopyWithImpl<$Res, TimeOfDay>;
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class _$TimeOfDayCopyWithImpl<$Res, $Val extends TimeOfDay>
    implements $TimeOfDayCopyWith<$Res> {
  _$TimeOfDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeOfDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hour = null, Object? minute = null}) {
    return _then(
      _value.copyWith(
            hour: null == hour
                ? _value.hour
                : hour // ignore: cast_nullable_to_non_nullable
                      as int,
            minute: null == minute
                ? _value.minute
                : minute // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimeOfDayImplCopyWith<$Res>
    implements $TimeOfDayCopyWith<$Res> {
  factory _$$TimeOfDayImplCopyWith(
    _$TimeOfDayImpl value,
    $Res Function(_$TimeOfDayImpl) then,
  ) = __$$TimeOfDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$TimeOfDayImplCopyWithImpl<$Res>
    extends _$TimeOfDayCopyWithImpl<$Res, _$TimeOfDayImpl>
    implements _$$TimeOfDayImplCopyWith<$Res> {
  __$$TimeOfDayImplCopyWithImpl(
    _$TimeOfDayImpl _value,
    $Res Function(_$TimeOfDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimeOfDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? hour = null, Object? minute = null}) {
    return _then(
      _$TimeOfDayImpl(
        hour: null == hour
            ? _value.hour
            : hour // ignore: cast_nullable_to_non_nullable
                  as int,
        minute: null == minute
            ? _value.minute
            : minute // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TimeOfDayImpl extends _TimeOfDay {
  const _$TimeOfDayImpl({required this.hour, required this.minute}) : super._();

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'TimeOfDay(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOfDayImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, minute);

  /// Create a copy of TimeOfDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOfDayImplCopyWith<_$TimeOfDayImpl> get copyWith =>
      __$$TimeOfDayImplCopyWithImpl<_$TimeOfDayImpl>(this, _$identity);
}

abstract class _TimeOfDay extends TimeOfDay {
  const factory _TimeOfDay({
    required final int hour,
    required final int minute,
  }) = _$TimeOfDayImpl;
  const _TimeOfDay._() : super._();

  @override
  int get hour;
  @override
  int get minute;

  /// Create a copy of TimeOfDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeOfDayImplCopyWith<_$TimeOfDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationStats {
  int get totalNotifications => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  int get achievementCount => throw _privateConstructorUsedError;
  int get friendRequestCount => throw _privateConstructorUsedError;
  DateTime get lastCheckAt => throw _privateConstructorUsedError;

  /// Create a copy of NotificationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStatsCopyWith<NotificationStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStatsCopyWith<$Res> {
  factory $NotificationStatsCopyWith(
    NotificationStats value,
    $Res Function(NotificationStats) then,
  ) = _$NotificationStatsCopyWithImpl<$Res, NotificationStats>;
  @useResult
  $Res call({
    int totalNotifications,
    int unreadCount,
    int achievementCount,
    int friendRequestCount,
    DateTime lastCheckAt,
  });
}

/// @nodoc
class _$NotificationStatsCopyWithImpl<$Res, $Val extends NotificationStats>
    implements $NotificationStatsCopyWith<$Res> {
  _$NotificationStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalNotifications = null,
    Object? unreadCount = null,
    Object? achievementCount = null,
    Object? friendRequestCount = null,
    Object? lastCheckAt = null,
  }) {
    return _then(
      _value.copyWith(
            totalNotifications: null == totalNotifications
                ? _value.totalNotifications
                : totalNotifications // ignore: cast_nullable_to_non_nullable
                      as int,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            achievementCount: null == achievementCount
                ? _value.achievementCount
                : achievementCount // ignore: cast_nullable_to_non_nullable
                      as int,
            friendRequestCount: null == friendRequestCount
                ? _value.friendRequestCount
                : friendRequestCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastCheckAt: null == lastCheckAt
                ? _value.lastCheckAt
                : lastCheckAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationStatsImplCopyWith<$Res>
    implements $NotificationStatsCopyWith<$Res> {
  factory _$$NotificationStatsImplCopyWith(
    _$NotificationStatsImpl value,
    $Res Function(_$NotificationStatsImpl) then,
  ) = __$$NotificationStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalNotifications,
    int unreadCount,
    int achievementCount,
    int friendRequestCount,
    DateTime lastCheckAt,
  });
}

/// @nodoc
class __$$NotificationStatsImplCopyWithImpl<$Res>
    extends _$NotificationStatsCopyWithImpl<$Res, _$NotificationStatsImpl>
    implements _$$NotificationStatsImplCopyWith<$Res> {
  __$$NotificationStatsImplCopyWithImpl(
    _$NotificationStatsImpl _value,
    $Res Function(_$NotificationStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalNotifications = null,
    Object? unreadCount = null,
    Object? achievementCount = null,
    Object? friendRequestCount = null,
    Object? lastCheckAt = null,
  }) {
    return _then(
      _$NotificationStatsImpl(
        totalNotifications: null == totalNotifications
            ? _value.totalNotifications
            : totalNotifications // ignore: cast_nullable_to_non_nullable
                  as int,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        achievementCount: null == achievementCount
            ? _value.achievementCount
            : achievementCount // ignore: cast_nullable_to_non_nullable
                  as int,
        friendRequestCount: null == friendRequestCount
            ? _value.friendRequestCount
            : friendRequestCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastCheckAt: null == lastCheckAt
            ? _value.lastCheckAt
            : lastCheckAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$NotificationStatsImpl extends _NotificationStats {
  const _$NotificationStatsImpl({
    required this.totalNotifications,
    required this.unreadCount,
    required this.achievementCount,
    required this.friendRequestCount,
    required this.lastCheckAt,
  }) : super._();

  @override
  final int totalNotifications;
  @override
  final int unreadCount;
  @override
  final int achievementCount;
  @override
  final int friendRequestCount;
  @override
  final DateTime lastCheckAt;

  @override
  String toString() {
    return 'NotificationStats(totalNotifications: $totalNotifications, unreadCount: $unreadCount, achievementCount: $achievementCount, friendRequestCount: $friendRequestCount, lastCheckAt: $lastCheckAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStatsImpl &&
            (identical(other.totalNotifications, totalNotifications) ||
                other.totalNotifications == totalNotifications) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.achievementCount, achievementCount) ||
                other.achievementCount == achievementCount) &&
            (identical(other.friendRequestCount, friendRequestCount) ||
                other.friendRequestCount == friendRequestCount) &&
            (identical(other.lastCheckAt, lastCheckAt) ||
                other.lastCheckAt == lastCheckAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalNotifications,
    unreadCount,
    achievementCount,
    friendRequestCount,
    lastCheckAt,
  );

  /// Create a copy of NotificationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStatsImplCopyWith<_$NotificationStatsImpl> get copyWith =>
      __$$NotificationStatsImplCopyWithImpl<_$NotificationStatsImpl>(
        this,
        _$identity,
      );
}

abstract class _NotificationStats extends NotificationStats {
  const factory _NotificationStats({
    required final int totalNotifications,
    required final int unreadCount,
    required final int achievementCount,
    required final int friendRequestCount,
    required final DateTime lastCheckAt,
  }) = _$NotificationStatsImpl;
  const _NotificationStats._() : super._();

  @override
  int get totalNotifications;
  @override
  int get unreadCount;
  @override
  int get achievementCount;
  @override
  int get friendRequestCount;
  @override
  DateTime get lastCheckAt;

  /// Create a copy of NotificationStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStatsImplCopyWith<_$NotificationStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
