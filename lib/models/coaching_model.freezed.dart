// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coaching_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachingSession _$CoachingSessionFromJson(Map<String, dynamic> json) {
  return _CoachingSession.fromJson(json);
}

/// @nodoc
mixin _$CoachingSession {
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  List<String> get analyzedSubjects =>
      throw _privateConstructorUsedError; // 'kokugo', 'sansu' など
  List<CoachingAdvice> get advices => throw _privateConstructorUsedError;
  LearningInsight get learningInsight => throw _privateConstructorUsedError;
  int get motivationScore =>
      throw _privateConstructorUsedError; // 0-100: ユーザーのモチベーション指標
  String get coachingPhase =>
      throw _privateConstructorUsedError; // 'initial', 'weakness_focus', 'strength_build', 'maintenance'
  List<String> get recommendedTopics =>
      throw _privateConstructorUsedError; // 重点学習トピック
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this CoachingSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachingSessionCopyWith<CoachingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingSessionCopyWith<$Res> {
  factory $CoachingSessionCopyWith(
    CoachingSession value,
    $Res Function(CoachingSession) then,
  ) = _$CoachingSessionCopyWithImpl<$Res, CoachingSession>;
  @useResult
  $Res call({
    String userId,
    DateTime createdAt,
    DateTime updatedAt,
    String sessionId,
    List<String> analyzedSubjects,
    List<CoachingAdvice> advices,
    LearningInsight learningInsight,
    int motivationScore,
    String coachingPhase,
    List<String> recommendedTopics,
    bool isActive,
  });

  $LearningInsightCopyWith<$Res> get learningInsight;
}

/// @nodoc
class _$CoachingSessionCopyWithImpl<$Res, $Val extends CoachingSession>
    implements $CoachingSessionCopyWith<$Res> {
  _$CoachingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sessionId = null,
    Object? analyzedSubjects = null,
    Object? advices = null,
    Object? learningInsight = null,
    Object? motivationScore = null,
    Object? coachingPhase = null,
    Object? recommendedTopics = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            analyzedSubjects: null == analyzedSubjects
                ? _value.analyzedSubjects
                : analyzedSubjects // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            advices: null == advices
                ? _value.advices
                : advices // ignore: cast_nullable_to_non_nullable
                      as List<CoachingAdvice>,
            learningInsight: null == learningInsight
                ? _value.learningInsight
                : learningInsight // ignore: cast_nullable_to_non_nullable
                      as LearningInsight,
            motivationScore: null == motivationScore
                ? _value.motivationScore
                : motivationScore // ignore: cast_nullable_to_non_nullable
                      as int,
            coachingPhase: null == coachingPhase
                ? _value.coachingPhase
                : coachingPhase // ignore: cast_nullable_to_non_nullable
                      as String,
            recommendedTopics: null == recommendedTopics
                ? _value.recommendedTopics
                : recommendedTopics // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LearningInsightCopyWith<$Res> get learningInsight {
    return $LearningInsightCopyWith<$Res>(_value.learningInsight, (value) {
      return _then(_value.copyWith(learningInsight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachingSessionImplCopyWith<$Res>
    implements $CoachingSessionCopyWith<$Res> {
  factory _$$CoachingSessionImplCopyWith(
    _$CoachingSessionImpl value,
    $Res Function(_$CoachingSessionImpl) then,
  ) = __$$CoachingSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    DateTime createdAt,
    DateTime updatedAt,
    String sessionId,
    List<String> analyzedSubjects,
    List<CoachingAdvice> advices,
    LearningInsight learningInsight,
    int motivationScore,
    String coachingPhase,
    List<String> recommendedTopics,
    bool isActive,
  });

  @override
  $LearningInsightCopyWith<$Res> get learningInsight;
}

/// @nodoc
class __$$CoachingSessionImplCopyWithImpl<$Res>
    extends _$CoachingSessionCopyWithImpl<$Res, _$CoachingSessionImpl>
    implements _$$CoachingSessionImplCopyWith<$Res> {
  __$$CoachingSessionImplCopyWithImpl(
    _$CoachingSessionImpl _value,
    $Res Function(_$CoachingSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? sessionId = null,
    Object? analyzedSubjects = null,
    Object? advices = null,
    Object? learningInsight = null,
    Object? motivationScore = null,
    Object? coachingPhase = null,
    Object? recommendedTopics = null,
    Object? isActive = null,
  }) {
    return _then(
      _$CoachingSessionImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        analyzedSubjects: null == analyzedSubjects
            ? _value._analyzedSubjects
            : analyzedSubjects // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        advices: null == advices
            ? _value._advices
            : advices // ignore: cast_nullable_to_non_nullable
                  as List<CoachingAdvice>,
        learningInsight: null == learningInsight
            ? _value.learningInsight
            : learningInsight // ignore: cast_nullable_to_non_nullable
                  as LearningInsight,
        motivationScore: null == motivationScore
            ? _value.motivationScore
            : motivationScore // ignore: cast_nullable_to_non_nullable
                  as int,
        coachingPhase: null == coachingPhase
            ? _value.coachingPhase
            : coachingPhase // ignore: cast_nullable_to_non_nullable
                  as String,
        recommendedTopics: null == recommendedTopics
            ? _value._recommendedTopics
            : recommendedTopics // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingSessionImpl implements _CoachingSession {
  const _$CoachingSessionImpl({
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.sessionId,
    required final List<String> analyzedSubjects,
    required final List<CoachingAdvice> advices,
    required this.learningInsight,
    required this.motivationScore,
    required this.coachingPhase,
    required final List<String> recommendedTopics,
    required this.isActive,
  }) : _analyzedSubjects = analyzedSubjects,
       _advices = advices,
       _recommendedTopics = recommendedTopics;

  factory _$CoachingSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingSessionImplFromJson(json);

  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String sessionId;
  final List<String> _analyzedSubjects;
  @override
  List<String> get analyzedSubjects {
    if (_analyzedSubjects is EqualUnmodifiableListView)
      return _analyzedSubjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyzedSubjects);
  }

  // 'kokugo', 'sansu' など
  final List<CoachingAdvice> _advices;
  // 'kokugo', 'sansu' など
  @override
  List<CoachingAdvice> get advices {
    if (_advices is EqualUnmodifiableListView) return _advices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advices);
  }

  @override
  final LearningInsight learningInsight;
  @override
  final int motivationScore;
  // 0-100: ユーザーのモチベーション指標
  @override
  final String coachingPhase;
  // 'initial', 'weakness_focus', 'strength_build', 'maintenance'
  final List<String> _recommendedTopics;
  // 'initial', 'weakness_focus', 'strength_build', 'maintenance'
  @override
  List<String> get recommendedTopics {
    if (_recommendedTopics is EqualUnmodifiableListView)
      return _recommendedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedTopics);
  }

  // 重点学習トピック
  @override
  final bool isActive;

  @override
  String toString() {
    return 'CoachingSession(userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, sessionId: $sessionId, analyzedSubjects: $analyzedSubjects, advices: $advices, learningInsight: $learningInsight, motivationScore: $motivationScore, coachingPhase: $coachingPhase, recommendedTopics: $recommendedTopics, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingSessionImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(
              other._analyzedSubjects,
              _analyzedSubjects,
            ) &&
            const DeepCollectionEquality().equals(other._advices, _advices) &&
            (identical(other.learningInsight, learningInsight) ||
                other.learningInsight == learningInsight) &&
            (identical(other.motivationScore, motivationScore) ||
                other.motivationScore == motivationScore) &&
            (identical(other.coachingPhase, coachingPhase) ||
                other.coachingPhase == coachingPhase) &&
            const DeepCollectionEquality().equals(
              other._recommendedTopics,
              _recommendedTopics,
            ) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    createdAt,
    updatedAt,
    sessionId,
    const DeepCollectionEquality().hash(_analyzedSubjects),
    const DeepCollectionEquality().hash(_advices),
    learningInsight,
    motivationScore,
    coachingPhase,
    const DeepCollectionEquality().hash(_recommendedTopics),
    isActive,
  );

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingSessionImplCopyWith<_$CoachingSessionImpl> get copyWith =>
      __$$CoachingSessionImplCopyWithImpl<_$CoachingSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingSessionImplToJson(this);
  }
}

abstract class _CoachingSession implements CoachingSession {
  const factory _CoachingSession({
    required final String userId,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final String sessionId,
    required final List<String> analyzedSubjects,
    required final List<CoachingAdvice> advices,
    required final LearningInsight learningInsight,
    required final int motivationScore,
    required final String coachingPhase,
    required final List<String> recommendedTopics,
    required final bool isActive,
  }) = _$CoachingSessionImpl;

  factory _CoachingSession.fromJson(Map<String, dynamic> json) =
      _$CoachingSessionImpl.fromJson;

  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get sessionId;
  @override
  List<String> get analyzedSubjects; // 'kokugo', 'sansu' など
  @override
  List<CoachingAdvice> get advices;
  @override
  LearningInsight get learningInsight;
  @override
  int get motivationScore; // 0-100: ユーザーのモチベーション指標
  @override
  String get coachingPhase; // 'initial', 'weakness_focus', 'strength_build', 'maintenance'
  @override
  List<String> get recommendedTopics; // 重点学習トピック
  @override
  bool get isActive;

  /// Create a copy of CoachingSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachingSessionImplCopyWith<_$CoachingSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachingAdvice _$CoachingAdviceFromJson(Map<String, dynamic> json) {
  return _CoachingAdvice.fromJson(json);
}

/// @nodoc
mixin _$CoachingAdvice {
  String get adviceId => throw _privateConstructorUsedError;
  String get category =>
      throw _privateConstructorUsedError; // 'weakness', 'strength', 'motivation', 'strategy'
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get actionableHint =>
      throw _privateConstructorUsedError; // 具体的な学習アクション
  int get priority => throw _privateConstructorUsedError; // 1-5: 優先度
  DateTime get givenAt => throw _privateConstructorUsedError;
  String get targetSubject => throw _privateConstructorUsedError; // 対象教科
  bool get isActedUpon => throw _privateConstructorUsedError; // ユーザーが実行したか
  DateTime? get actedUponAt => throw _privateConstructorUsedError;
  int get expectedImpactScore => throw _privateConstructorUsedError;

  /// Serializes this CoachingAdvice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachingAdvice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachingAdviceCopyWith<CoachingAdvice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingAdviceCopyWith<$Res> {
  factory $CoachingAdviceCopyWith(
    CoachingAdvice value,
    $Res Function(CoachingAdvice) then,
  ) = _$CoachingAdviceCopyWithImpl<$Res, CoachingAdvice>;
  @useResult
  $Res call({
    String adviceId,
    String category,
    String title,
    String description,
    String actionableHint,
    int priority,
    DateTime givenAt,
    String targetSubject,
    bool isActedUpon,
    DateTime? actedUponAt,
    int expectedImpactScore,
  });
}

/// @nodoc
class _$CoachingAdviceCopyWithImpl<$Res, $Val extends CoachingAdvice>
    implements $CoachingAdviceCopyWith<$Res> {
  _$CoachingAdviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachingAdvice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adviceId = null,
    Object? category = null,
    Object? title = null,
    Object? description = null,
    Object? actionableHint = null,
    Object? priority = null,
    Object? givenAt = null,
    Object? targetSubject = null,
    Object? isActedUpon = null,
    Object? actedUponAt = freezed,
    Object? expectedImpactScore = null,
  }) {
    return _then(
      _value.copyWith(
            adviceId: null == adviceId
                ? _value.adviceId
                : adviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            actionableHint: null == actionableHint
                ? _value.actionableHint
                : actionableHint // ignore: cast_nullable_to_non_nullable
                      as String,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            givenAt: null == givenAt
                ? _value.givenAt
                : givenAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            targetSubject: null == targetSubject
                ? _value.targetSubject
                : targetSubject // ignore: cast_nullable_to_non_nullable
                      as String,
            isActedUpon: null == isActedUpon
                ? _value.isActedUpon
                : isActedUpon // ignore: cast_nullable_to_non_nullable
                      as bool,
            actedUponAt: freezed == actedUponAt
                ? _value.actedUponAt
                : actedUponAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            expectedImpactScore: null == expectedImpactScore
                ? _value.expectedImpactScore
                : expectedImpactScore // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachingAdviceImplCopyWith<$Res>
    implements $CoachingAdviceCopyWith<$Res> {
  factory _$$CoachingAdviceImplCopyWith(
    _$CoachingAdviceImpl value,
    $Res Function(_$CoachingAdviceImpl) then,
  ) = __$$CoachingAdviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String adviceId,
    String category,
    String title,
    String description,
    String actionableHint,
    int priority,
    DateTime givenAt,
    String targetSubject,
    bool isActedUpon,
    DateTime? actedUponAt,
    int expectedImpactScore,
  });
}

/// @nodoc
class __$$CoachingAdviceImplCopyWithImpl<$Res>
    extends _$CoachingAdviceCopyWithImpl<$Res, _$CoachingAdviceImpl>
    implements _$$CoachingAdviceImplCopyWith<$Res> {
  __$$CoachingAdviceImplCopyWithImpl(
    _$CoachingAdviceImpl _value,
    $Res Function(_$CoachingAdviceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachingAdvice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adviceId = null,
    Object? category = null,
    Object? title = null,
    Object? description = null,
    Object? actionableHint = null,
    Object? priority = null,
    Object? givenAt = null,
    Object? targetSubject = null,
    Object? isActedUpon = null,
    Object? actedUponAt = freezed,
    Object? expectedImpactScore = null,
  }) {
    return _then(
      _$CoachingAdviceImpl(
        adviceId: null == adviceId
            ? _value.adviceId
            : adviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        actionableHint: null == actionableHint
            ? _value.actionableHint
            : actionableHint // ignore: cast_nullable_to_non_nullable
                  as String,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        givenAt: null == givenAt
            ? _value.givenAt
            : givenAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        targetSubject: null == targetSubject
            ? _value.targetSubject
            : targetSubject // ignore: cast_nullable_to_non_nullable
                  as String,
        isActedUpon: null == isActedUpon
            ? _value.isActedUpon
            : isActedUpon // ignore: cast_nullable_to_non_nullable
                  as bool,
        actedUponAt: freezed == actedUponAt
            ? _value.actedUponAt
            : actedUponAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        expectedImpactScore: null == expectedImpactScore
            ? _value.expectedImpactScore
            : expectedImpactScore // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingAdviceImpl implements _CoachingAdvice {
  const _$CoachingAdviceImpl({
    required this.adviceId,
    required this.category,
    required this.title,
    required this.description,
    required this.actionableHint,
    required this.priority,
    required this.givenAt,
    required this.targetSubject,
    required this.isActedUpon,
    required this.actedUponAt,
    required this.expectedImpactScore,
  });

  factory _$CoachingAdviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingAdviceImplFromJson(json);

  @override
  final String adviceId;
  @override
  final String category;
  // 'weakness', 'strength', 'motivation', 'strategy'
  @override
  final String title;
  @override
  final String description;
  @override
  final String actionableHint;
  // 具体的な学習アクション
  @override
  final int priority;
  // 1-5: 優先度
  @override
  final DateTime givenAt;
  @override
  final String targetSubject;
  // 対象教科
  @override
  final bool isActedUpon;
  // ユーザーが実行したか
  @override
  final DateTime? actedUponAt;
  @override
  final int expectedImpactScore;

  @override
  String toString() {
    return 'CoachingAdvice(adviceId: $adviceId, category: $category, title: $title, description: $description, actionableHint: $actionableHint, priority: $priority, givenAt: $givenAt, targetSubject: $targetSubject, isActedUpon: $isActedUpon, actedUponAt: $actedUponAt, expectedImpactScore: $expectedImpactScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingAdviceImpl &&
            (identical(other.adviceId, adviceId) ||
                other.adviceId == adviceId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actionableHint, actionableHint) ||
                other.actionableHint == actionableHint) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.givenAt, givenAt) || other.givenAt == givenAt) &&
            (identical(other.targetSubject, targetSubject) ||
                other.targetSubject == targetSubject) &&
            (identical(other.isActedUpon, isActedUpon) ||
                other.isActedUpon == isActedUpon) &&
            (identical(other.actedUponAt, actedUponAt) ||
                other.actedUponAt == actedUponAt) &&
            (identical(other.expectedImpactScore, expectedImpactScore) ||
                other.expectedImpactScore == expectedImpactScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    adviceId,
    category,
    title,
    description,
    actionableHint,
    priority,
    givenAt,
    targetSubject,
    isActedUpon,
    actedUponAt,
    expectedImpactScore,
  );

  /// Create a copy of CoachingAdvice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingAdviceImplCopyWith<_$CoachingAdviceImpl> get copyWith =>
      __$$CoachingAdviceImplCopyWithImpl<_$CoachingAdviceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingAdviceImplToJson(this);
  }
}

abstract class _CoachingAdvice implements CoachingAdvice {
  const factory _CoachingAdvice({
    required final String adviceId,
    required final String category,
    required final String title,
    required final String description,
    required final String actionableHint,
    required final int priority,
    required final DateTime givenAt,
    required final String targetSubject,
    required final bool isActedUpon,
    required final DateTime? actedUponAt,
    required final int expectedImpactScore,
  }) = _$CoachingAdviceImpl;

  factory _CoachingAdvice.fromJson(Map<String, dynamic> json) =
      _$CoachingAdviceImpl.fromJson;

  @override
  String get adviceId;
  @override
  String get category; // 'weakness', 'strength', 'motivation', 'strategy'
  @override
  String get title;
  @override
  String get description;
  @override
  String get actionableHint; // 具体的な学習アクション
  @override
  int get priority; // 1-5: 優先度
  @override
  DateTime get givenAt;
  @override
  String get targetSubject; // 対象教科
  @override
  bool get isActedUpon; // ユーザーが実行したか
  @override
  DateTime? get actedUponAt;
  @override
  int get expectedImpactScore;

  /// Create a copy of CoachingAdvice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachingAdviceImplCopyWith<_$CoachingAdviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningInsight _$LearningInsightFromJson(Map<String, dynamic> json) {
  return _LearningInsight.fromJson(json);
}

/// @nodoc
mixin _$LearningInsight {
  String get userId => throw _privateConstructorUsedError;
  DateTime get analyzedAt => throw _privateConstructorUsedError;
  Map<String, SubjectInsight> get subjectInsights =>
      throw _privateConstructorUsedError; // appId -> 分析結果
  String get overallLearningPattern =>
      throw _privateConstructorUsedError; // 'bursty', 'consistent', 'irregular', 'declining'
  List<String> get strengthAreas =>
      throw _privateConstructorUsedError; // 得意分野トピック
  List<String> get weaknessAreas =>
      throw _privateConstructorUsedError; // 弱点分野トピック
  double get consistencyTrendScore =>
      throw _privateConstructorUsedError; // -1.0 ~ 1.0: 継続度の傾向
  double get engagementTrendScore =>
      throw _privateConstructorUsedError; // -1.0 ~ 1.0: エンゲージメント傾向
  String get recommendedFocusArea =>
      throw _privateConstructorUsedError; // 重点学習推奨分野
  int get estimatedDaysToImprovement =>
      throw _privateConstructorUsedError; // 改善予想日数
  List<String> get successPatterns =>
      throw _privateConstructorUsedError; // 成功パターン
  List<String> get failurePatterns => throw _privateConstructorUsedError;

  /// Serializes this LearningInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LearningInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LearningInsightCopyWith<LearningInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningInsightCopyWith<$Res> {
  factory $LearningInsightCopyWith(
    LearningInsight value,
    $Res Function(LearningInsight) then,
  ) = _$LearningInsightCopyWithImpl<$Res, LearningInsight>;
  @useResult
  $Res call({
    String userId,
    DateTime analyzedAt,
    Map<String, SubjectInsight> subjectInsights,
    String overallLearningPattern,
    List<String> strengthAreas,
    List<String> weaknessAreas,
    double consistencyTrendScore,
    double engagementTrendScore,
    String recommendedFocusArea,
    int estimatedDaysToImprovement,
    List<String> successPatterns,
    List<String> failurePatterns,
  });
}

/// @nodoc
class _$LearningInsightCopyWithImpl<$Res, $Val extends LearningInsight>
    implements $LearningInsightCopyWith<$Res> {
  _$LearningInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearningInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? analyzedAt = null,
    Object? subjectInsights = null,
    Object? overallLearningPattern = null,
    Object? strengthAreas = null,
    Object? weaknessAreas = null,
    Object? consistencyTrendScore = null,
    Object? engagementTrendScore = null,
    Object? recommendedFocusArea = null,
    Object? estimatedDaysToImprovement = null,
    Object? successPatterns = null,
    Object? failurePatterns = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            analyzedAt: null == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            subjectInsights: null == subjectInsights
                ? _value.subjectInsights
                : subjectInsights // ignore: cast_nullable_to_non_nullable
                      as Map<String, SubjectInsight>,
            overallLearningPattern: null == overallLearningPattern
                ? _value.overallLearningPattern
                : overallLearningPattern // ignore: cast_nullable_to_non_nullable
                      as String,
            strengthAreas: null == strengthAreas
                ? _value.strengthAreas
                : strengthAreas // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            weaknessAreas: null == weaknessAreas
                ? _value.weaknessAreas
                : weaknessAreas // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            consistencyTrendScore: null == consistencyTrendScore
                ? _value.consistencyTrendScore
                : consistencyTrendScore // ignore: cast_nullable_to_non_nullable
                      as double,
            engagementTrendScore: null == engagementTrendScore
                ? _value.engagementTrendScore
                : engagementTrendScore // ignore: cast_nullable_to_non_nullable
                      as double,
            recommendedFocusArea: null == recommendedFocusArea
                ? _value.recommendedFocusArea
                : recommendedFocusArea // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedDaysToImprovement: null == estimatedDaysToImprovement
                ? _value.estimatedDaysToImprovement
                : estimatedDaysToImprovement // ignore: cast_nullable_to_non_nullable
                      as int,
            successPatterns: null == successPatterns
                ? _value.successPatterns
                : successPatterns // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            failurePatterns: null == failurePatterns
                ? _value.failurePatterns
                : failurePatterns // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LearningInsightImplCopyWith<$Res>
    implements $LearningInsightCopyWith<$Res> {
  factory _$$LearningInsightImplCopyWith(
    _$LearningInsightImpl value,
    $Res Function(_$LearningInsightImpl) then,
  ) = __$$LearningInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    DateTime analyzedAt,
    Map<String, SubjectInsight> subjectInsights,
    String overallLearningPattern,
    List<String> strengthAreas,
    List<String> weaknessAreas,
    double consistencyTrendScore,
    double engagementTrendScore,
    String recommendedFocusArea,
    int estimatedDaysToImprovement,
    List<String> successPatterns,
    List<String> failurePatterns,
  });
}

/// @nodoc
class __$$LearningInsightImplCopyWithImpl<$Res>
    extends _$LearningInsightCopyWithImpl<$Res, _$LearningInsightImpl>
    implements _$$LearningInsightImplCopyWith<$Res> {
  __$$LearningInsightImplCopyWithImpl(
    _$LearningInsightImpl _value,
    $Res Function(_$LearningInsightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearningInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? analyzedAt = null,
    Object? subjectInsights = null,
    Object? overallLearningPattern = null,
    Object? strengthAreas = null,
    Object? weaknessAreas = null,
    Object? consistencyTrendScore = null,
    Object? engagementTrendScore = null,
    Object? recommendedFocusArea = null,
    Object? estimatedDaysToImprovement = null,
    Object? successPatterns = null,
    Object? failurePatterns = null,
  }) {
    return _then(
      _$LearningInsightImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        analyzedAt: null == analyzedAt
            ? _value.analyzedAt
            : analyzedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        subjectInsights: null == subjectInsights
            ? _value._subjectInsights
            : subjectInsights // ignore: cast_nullable_to_non_nullable
                  as Map<String, SubjectInsight>,
        overallLearningPattern: null == overallLearningPattern
            ? _value.overallLearningPattern
            : overallLearningPattern // ignore: cast_nullable_to_non_nullable
                  as String,
        strengthAreas: null == strengthAreas
            ? _value._strengthAreas
            : strengthAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        weaknessAreas: null == weaknessAreas
            ? _value._weaknessAreas
            : weaknessAreas // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        consistencyTrendScore: null == consistencyTrendScore
            ? _value.consistencyTrendScore
            : consistencyTrendScore // ignore: cast_nullable_to_non_nullable
                  as double,
        engagementTrendScore: null == engagementTrendScore
            ? _value.engagementTrendScore
            : engagementTrendScore // ignore: cast_nullable_to_non_nullable
                  as double,
        recommendedFocusArea: null == recommendedFocusArea
            ? _value.recommendedFocusArea
            : recommendedFocusArea // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedDaysToImprovement: null == estimatedDaysToImprovement
            ? _value.estimatedDaysToImprovement
            : estimatedDaysToImprovement // ignore: cast_nullable_to_non_nullable
                  as int,
        successPatterns: null == successPatterns
            ? _value._successPatterns
            : successPatterns // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        failurePatterns: null == failurePatterns
            ? _value._failurePatterns
            : failurePatterns // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningInsightImpl implements _LearningInsight {
  const _$LearningInsightImpl({
    required this.userId,
    required this.analyzedAt,
    required final Map<String, SubjectInsight> subjectInsights,
    required this.overallLearningPattern,
    required final List<String> strengthAreas,
    required final List<String> weaknessAreas,
    required this.consistencyTrendScore,
    required this.engagementTrendScore,
    required this.recommendedFocusArea,
    required this.estimatedDaysToImprovement,
    required final List<String> successPatterns,
    required final List<String> failurePatterns,
  }) : _subjectInsights = subjectInsights,
       _strengthAreas = strengthAreas,
       _weaknessAreas = weaknessAreas,
       _successPatterns = successPatterns,
       _failurePatterns = failurePatterns;

  factory _$LearningInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningInsightImplFromJson(json);

  @override
  final String userId;
  @override
  final DateTime analyzedAt;
  final Map<String, SubjectInsight> _subjectInsights;
  @override
  Map<String, SubjectInsight> get subjectInsights {
    if (_subjectInsights is EqualUnmodifiableMapView) return _subjectInsights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subjectInsights);
  }

  // appId -> 分析結果
  @override
  final String overallLearningPattern;
  // 'bursty', 'consistent', 'irregular', 'declining'
  final List<String> _strengthAreas;
  // 'bursty', 'consistent', 'irregular', 'declining'
  @override
  List<String> get strengthAreas {
    if (_strengthAreas is EqualUnmodifiableListView) return _strengthAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengthAreas);
  }

  // 得意分野トピック
  final List<String> _weaknessAreas;
  // 得意分野トピック
  @override
  List<String> get weaknessAreas {
    if (_weaknessAreas is EqualUnmodifiableListView) return _weaknessAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknessAreas);
  }

  // 弱点分野トピック
  @override
  final double consistencyTrendScore;
  // -1.0 ~ 1.0: 継続度の傾向
  @override
  final double engagementTrendScore;
  // -1.0 ~ 1.0: エンゲージメント傾向
  @override
  final String recommendedFocusArea;
  // 重点学習推奨分野
  @override
  final int estimatedDaysToImprovement;
  // 改善予想日数
  final List<String> _successPatterns;
  // 改善予想日数
  @override
  List<String> get successPatterns {
    if (_successPatterns is EqualUnmodifiableListView) return _successPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successPatterns);
  }

  // 成功パターン
  final List<String> _failurePatterns;
  // 成功パターン
  @override
  List<String> get failurePatterns {
    if (_failurePatterns is EqualUnmodifiableListView) return _failurePatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failurePatterns);
  }

  @override
  String toString() {
    return 'LearningInsight(userId: $userId, analyzedAt: $analyzedAt, subjectInsights: $subjectInsights, overallLearningPattern: $overallLearningPattern, strengthAreas: $strengthAreas, weaknessAreas: $weaknessAreas, consistencyTrendScore: $consistencyTrendScore, engagementTrendScore: $engagementTrendScore, recommendedFocusArea: $recommendedFocusArea, estimatedDaysToImprovement: $estimatedDaysToImprovement, successPatterns: $successPatterns, failurePatterns: $failurePatterns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningInsightImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt) &&
            const DeepCollectionEquality().equals(
              other._subjectInsights,
              _subjectInsights,
            ) &&
            (identical(other.overallLearningPattern, overallLearningPattern) ||
                other.overallLearningPattern == overallLearningPattern) &&
            const DeepCollectionEquality().equals(
              other._strengthAreas,
              _strengthAreas,
            ) &&
            const DeepCollectionEquality().equals(
              other._weaknessAreas,
              _weaknessAreas,
            ) &&
            (identical(other.consistencyTrendScore, consistencyTrendScore) ||
                other.consistencyTrendScore == consistencyTrendScore) &&
            (identical(other.engagementTrendScore, engagementTrendScore) ||
                other.engagementTrendScore == engagementTrendScore) &&
            (identical(other.recommendedFocusArea, recommendedFocusArea) ||
                other.recommendedFocusArea == recommendedFocusArea) &&
            (identical(
                  other.estimatedDaysToImprovement,
                  estimatedDaysToImprovement,
                ) ||
                other.estimatedDaysToImprovement ==
                    estimatedDaysToImprovement) &&
            const DeepCollectionEquality().equals(
              other._successPatterns,
              _successPatterns,
            ) &&
            const DeepCollectionEquality().equals(
              other._failurePatterns,
              _failurePatterns,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    analyzedAt,
    const DeepCollectionEquality().hash(_subjectInsights),
    overallLearningPattern,
    const DeepCollectionEquality().hash(_strengthAreas),
    const DeepCollectionEquality().hash(_weaknessAreas),
    consistencyTrendScore,
    engagementTrendScore,
    recommendedFocusArea,
    estimatedDaysToImprovement,
    const DeepCollectionEquality().hash(_successPatterns),
    const DeepCollectionEquality().hash(_failurePatterns),
  );

  /// Create a copy of LearningInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningInsightImplCopyWith<_$LearningInsightImpl> get copyWith =>
      __$$LearningInsightImplCopyWithImpl<_$LearningInsightImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningInsightImplToJson(this);
  }
}

abstract class _LearningInsight implements LearningInsight {
  const factory _LearningInsight({
    required final String userId,
    required final DateTime analyzedAt,
    required final Map<String, SubjectInsight> subjectInsights,
    required final String overallLearningPattern,
    required final List<String> strengthAreas,
    required final List<String> weaknessAreas,
    required final double consistencyTrendScore,
    required final double engagementTrendScore,
    required final String recommendedFocusArea,
    required final int estimatedDaysToImprovement,
    required final List<String> successPatterns,
    required final List<String> failurePatterns,
  }) = _$LearningInsightImpl;

  factory _LearningInsight.fromJson(Map<String, dynamic> json) =
      _$LearningInsightImpl.fromJson;

  @override
  String get userId;
  @override
  DateTime get analyzedAt;
  @override
  Map<String, SubjectInsight> get subjectInsights; // appId -> 分析結果
  @override
  String get overallLearningPattern; // 'bursty', 'consistent', 'irregular', 'declining'
  @override
  List<String> get strengthAreas; // 得意分野トピック
  @override
  List<String> get weaknessAreas; // 弱点分野トピック
  @override
  double get consistencyTrendScore; // -1.0 ~ 1.0: 継続度の傾向
  @override
  double get engagementTrendScore; // -1.0 ~ 1.0: エンゲージメント傾向
  @override
  String get recommendedFocusArea; // 重点学習推奨分野
  @override
  int get estimatedDaysToImprovement; // 改善予想日数
  @override
  List<String> get successPatterns; // 成功パターン
  @override
  List<String> get failurePatterns;

  /// Create a copy of LearningInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearningInsightImplCopyWith<_$LearningInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubjectInsight _$SubjectInsightFromJson(Map<String, dynamic> json) {
  return _SubjectInsight.fromJson(json);
}

/// @nodoc
mixin _$SubjectInsight {
  String get appId => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  double get currentAccuracy => throw _privateConstructorUsedError;
  double get accuracyTrend =>
      throw _privateConstructorUsedError; // -1.0 ~ 1.0: 精度の傾向
  int get totalLearningMinutes => throw _privateConstructorUsedError;
  int get averageSessionDuration =>
      throw _privateConstructorUsedError; // 平均セッション時間（分）
  List<TopicStrength> get topicStrengths =>
      throw _privateConstructorUsedError; // トピック別強度
  List<String> get strugglingTopics =>
      throw _privateConstructorUsedError; // つまづきトピック
  int get daysSinceLastSession => throw _privateConstructorUsedError;
  int get consecutiveDaysLearned => throw _privateConstructorUsedError;
  double get estimatedReadiness => throw _privateConstructorUsedError;

  /// Serializes this SubjectInsight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectInsightCopyWith<SubjectInsight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectInsightCopyWith<$Res> {
  factory $SubjectInsightCopyWith(
    SubjectInsight value,
    $Res Function(SubjectInsight) then,
  ) = _$SubjectInsightCopyWithImpl<$Res, SubjectInsight>;
  @useResult
  $Res call({
    String appId,
    String appName,
    double currentAccuracy,
    double accuracyTrend,
    int totalLearningMinutes,
    int averageSessionDuration,
    List<TopicStrength> topicStrengths,
    List<String> strugglingTopics,
    int daysSinceLastSession,
    int consecutiveDaysLearned,
    double estimatedReadiness,
  });
}

/// @nodoc
class _$SubjectInsightCopyWithImpl<$Res, $Val extends SubjectInsight>
    implements $SubjectInsightCopyWith<$Res> {
  _$SubjectInsightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? currentAccuracy = null,
    Object? accuracyTrend = null,
    Object? totalLearningMinutes = null,
    Object? averageSessionDuration = null,
    Object? topicStrengths = null,
    Object? strugglingTopics = null,
    Object? daysSinceLastSession = null,
    Object? consecutiveDaysLearned = null,
    Object? estimatedReadiness = null,
  }) {
    return _then(
      _value.copyWith(
            appId: null == appId
                ? _value.appId
                : appId // ignore: cast_nullable_to_non_nullable
                      as String,
            appName: null == appName
                ? _value.appName
                : appName // ignore: cast_nullable_to_non_nullable
                      as String,
            currentAccuracy: null == currentAccuracy
                ? _value.currentAccuracy
                : currentAccuracy // ignore: cast_nullable_to_non_nullable
                      as double,
            accuracyTrend: null == accuracyTrend
                ? _value.accuracyTrend
                : accuracyTrend // ignore: cast_nullable_to_non_nullable
                      as double,
            totalLearningMinutes: null == totalLearningMinutes
                ? _value.totalLearningMinutes
                : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            averageSessionDuration: null == averageSessionDuration
                ? _value.averageSessionDuration
                : averageSessionDuration // ignore: cast_nullable_to_non_nullable
                      as int,
            topicStrengths: null == topicStrengths
                ? _value.topicStrengths
                : topicStrengths // ignore: cast_nullable_to_non_nullable
                      as List<TopicStrength>,
            strugglingTopics: null == strugglingTopics
                ? _value.strugglingTopics
                : strugglingTopics // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            daysSinceLastSession: null == daysSinceLastSession
                ? _value.daysSinceLastSession
                : daysSinceLastSession // ignore: cast_nullable_to_non_nullable
                      as int,
            consecutiveDaysLearned: null == consecutiveDaysLearned
                ? _value.consecutiveDaysLearned
                : consecutiveDaysLearned // ignore: cast_nullable_to_non_nullable
                      as int,
            estimatedReadiness: null == estimatedReadiness
                ? _value.estimatedReadiness
                : estimatedReadiness // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubjectInsightImplCopyWith<$Res>
    implements $SubjectInsightCopyWith<$Res> {
  factory _$$SubjectInsightImplCopyWith(
    _$SubjectInsightImpl value,
    $Res Function(_$SubjectInsightImpl) then,
  ) = __$$SubjectInsightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String appId,
    String appName,
    double currentAccuracy,
    double accuracyTrend,
    int totalLearningMinutes,
    int averageSessionDuration,
    List<TopicStrength> topicStrengths,
    List<String> strugglingTopics,
    int daysSinceLastSession,
    int consecutiveDaysLearned,
    double estimatedReadiness,
  });
}

/// @nodoc
class __$$SubjectInsightImplCopyWithImpl<$Res>
    extends _$SubjectInsightCopyWithImpl<$Res, _$SubjectInsightImpl>
    implements _$$SubjectInsightImplCopyWith<$Res> {
  __$$SubjectInsightImplCopyWithImpl(
    _$SubjectInsightImpl _value,
    $Res Function(_$SubjectInsightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubjectInsight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? currentAccuracy = null,
    Object? accuracyTrend = null,
    Object? totalLearningMinutes = null,
    Object? averageSessionDuration = null,
    Object? topicStrengths = null,
    Object? strugglingTopics = null,
    Object? daysSinceLastSession = null,
    Object? consecutiveDaysLearned = null,
    Object? estimatedReadiness = null,
  }) {
    return _then(
      _$SubjectInsightImpl(
        appId: null == appId
            ? _value.appId
            : appId // ignore: cast_nullable_to_non_nullable
                  as String,
        appName: null == appName
            ? _value.appName
            : appName // ignore: cast_nullable_to_non_nullable
                  as String,
        currentAccuracy: null == currentAccuracy
            ? _value.currentAccuracy
            : currentAccuracy // ignore: cast_nullable_to_non_nullable
                  as double,
        accuracyTrend: null == accuracyTrend
            ? _value.accuracyTrend
            : accuracyTrend // ignore: cast_nullable_to_non_nullable
                  as double,
        totalLearningMinutes: null == totalLearningMinutes
            ? _value.totalLearningMinutes
            : totalLearningMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        averageSessionDuration: null == averageSessionDuration
            ? _value.averageSessionDuration
            : averageSessionDuration // ignore: cast_nullable_to_non_nullable
                  as int,
        topicStrengths: null == topicStrengths
            ? _value._topicStrengths
            : topicStrengths // ignore: cast_nullable_to_non_nullable
                  as List<TopicStrength>,
        strugglingTopics: null == strugglingTopics
            ? _value._strugglingTopics
            : strugglingTopics // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        daysSinceLastSession: null == daysSinceLastSession
            ? _value.daysSinceLastSession
            : daysSinceLastSession // ignore: cast_nullable_to_non_nullable
                  as int,
        consecutiveDaysLearned: null == consecutiveDaysLearned
            ? _value.consecutiveDaysLearned
            : consecutiveDaysLearned // ignore: cast_nullable_to_non_nullable
                  as int,
        estimatedReadiness: null == estimatedReadiness
            ? _value.estimatedReadiness
            : estimatedReadiness // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectInsightImpl implements _SubjectInsight {
  const _$SubjectInsightImpl({
    required this.appId,
    required this.appName,
    required this.currentAccuracy,
    required this.accuracyTrend,
    required this.totalLearningMinutes,
    required this.averageSessionDuration,
    required final List<TopicStrength> topicStrengths,
    required final List<String> strugglingTopics,
    required this.daysSinceLastSession,
    required this.consecutiveDaysLearned,
    required this.estimatedReadiness,
  }) : _topicStrengths = topicStrengths,
       _strugglingTopics = strugglingTopics;

  factory _$SubjectInsightImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectInsightImplFromJson(json);

  @override
  final String appId;
  @override
  final String appName;
  @override
  final double currentAccuracy;
  @override
  final double accuracyTrend;
  // -1.0 ~ 1.0: 精度の傾向
  @override
  final int totalLearningMinutes;
  @override
  final int averageSessionDuration;
  // 平均セッション時間（分）
  final List<TopicStrength> _topicStrengths;
  // 平均セッション時間（分）
  @override
  List<TopicStrength> get topicStrengths {
    if (_topicStrengths is EqualUnmodifiableListView) return _topicStrengths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicStrengths);
  }

  // トピック別強度
  final List<String> _strugglingTopics;
  // トピック別強度
  @override
  List<String> get strugglingTopics {
    if (_strugglingTopics is EqualUnmodifiableListView)
      return _strugglingTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strugglingTopics);
  }

  // つまづきトピック
  @override
  final int daysSinceLastSession;
  @override
  final int consecutiveDaysLearned;
  @override
  final double estimatedReadiness;

  @override
  String toString() {
    return 'SubjectInsight(appId: $appId, appName: $appName, currentAccuracy: $currentAccuracy, accuracyTrend: $accuracyTrend, totalLearningMinutes: $totalLearningMinutes, averageSessionDuration: $averageSessionDuration, topicStrengths: $topicStrengths, strugglingTopics: $strugglingTopics, daysSinceLastSession: $daysSinceLastSession, consecutiveDaysLearned: $consecutiveDaysLearned, estimatedReadiness: $estimatedReadiness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectInsightImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.currentAccuracy, currentAccuracy) ||
                other.currentAccuracy == currentAccuracy) &&
            (identical(other.accuracyTrend, accuracyTrend) ||
                other.accuracyTrend == accuracyTrend) &&
            (identical(other.totalLearningMinutes, totalLearningMinutes) ||
                other.totalLearningMinutes == totalLearningMinutes) &&
            (identical(other.averageSessionDuration, averageSessionDuration) ||
                other.averageSessionDuration == averageSessionDuration) &&
            const DeepCollectionEquality().equals(
              other._topicStrengths,
              _topicStrengths,
            ) &&
            const DeepCollectionEquality().equals(
              other._strugglingTopics,
              _strugglingTopics,
            ) &&
            (identical(other.daysSinceLastSession, daysSinceLastSession) ||
                other.daysSinceLastSession == daysSinceLastSession) &&
            (identical(other.consecutiveDaysLearned, consecutiveDaysLearned) ||
                other.consecutiveDaysLearned == consecutiveDaysLearned) &&
            (identical(other.estimatedReadiness, estimatedReadiness) ||
                other.estimatedReadiness == estimatedReadiness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    appId,
    appName,
    currentAccuracy,
    accuracyTrend,
    totalLearningMinutes,
    averageSessionDuration,
    const DeepCollectionEquality().hash(_topicStrengths),
    const DeepCollectionEquality().hash(_strugglingTopics),
    daysSinceLastSession,
    consecutiveDaysLearned,
    estimatedReadiness,
  );

  /// Create a copy of SubjectInsight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectInsightImplCopyWith<_$SubjectInsightImpl> get copyWith =>
      __$$SubjectInsightImplCopyWithImpl<_$SubjectInsightImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectInsightImplToJson(this);
  }
}

abstract class _SubjectInsight implements SubjectInsight {
  const factory _SubjectInsight({
    required final String appId,
    required final String appName,
    required final double currentAccuracy,
    required final double accuracyTrend,
    required final int totalLearningMinutes,
    required final int averageSessionDuration,
    required final List<TopicStrength> topicStrengths,
    required final List<String> strugglingTopics,
    required final int daysSinceLastSession,
    required final int consecutiveDaysLearned,
    required final double estimatedReadiness,
  }) = _$SubjectInsightImpl;

  factory _SubjectInsight.fromJson(Map<String, dynamic> json) =
      _$SubjectInsightImpl.fromJson;

  @override
  String get appId;
  @override
  String get appName;
  @override
  double get currentAccuracy;
  @override
  double get accuracyTrend; // -1.0 ~ 1.0: 精度の傾向
  @override
  int get totalLearningMinutes;
  @override
  int get averageSessionDuration; // 平均セッション時間（分）
  @override
  List<TopicStrength> get topicStrengths; // トピック別強度
  @override
  List<String> get strugglingTopics; // つまづきトピック
  @override
  int get daysSinceLastSession;
  @override
  int get consecutiveDaysLearned;
  @override
  double get estimatedReadiness;

  /// Create a copy of SubjectInsight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectInsightImplCopyWith<_$SubjectInsightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicStrength _$TopicStrengthFromJson(Map<String, dynamic> json) {
  return _TopicStrength.fromJson(json);
}

/// @nodoc
mixin _$TopicStrength {
  String get topicId => throw _privateConstructorUsedError;
  String get topicName => throw _privateConstructorUsedError;
  double get masteryLevel => throw _privateConstructorUsedError; // 0-100: 習熟度
  int get questionsAttempted => throw _privateConstructorUsedError;
  int get questionsCorrect => throw _privateConstructorUsedError;
  double get timeSpentMinutes => throw _privateConstructorUsedError;

  /// Serializes this TopicStrength to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopicStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopicStrengthCopyWith<TopicStrength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicStrengthCopyWith<$Res> {
  factory $TopicStrengthCopyWith(
    TopicStrength value,
    $Res Function(TopicStrength) then,
  ) = _$TopicStrengthCopyWithImpl<$Res, TopicStrength>;
  @useResult
  $Res call({
    String topicId,
    String topicName,
    double masteryLevel,
    int questionsAttempted,
    int questionsCorrect,
    double timeSpentMinutes,
  });
}

/// @nodoc
class _$TopicStrengthCopyWithImpl<$Res, $Val extends TopicStrength>
    implements $TopicStrengthCopyWith<$Res> {
  _$TopicStrengthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? topicName = null,
    Object? masteryLevel = null,
    Object? questionsAttempted = null,
    Object? questionsCorrect = null,
    Object? timeSpentMinutes = null,
  }) {
    return _then(
      _value.copyWith(
            topicId: null == topicId
                ? _value.topicId
                : topicId // ignore: cast_nullable_to_non_nullable
                      as String,
            topicName: null == topicName
                ? _value.topicName
                : topicName // ignore: cast_nullable_to_non_nullable
                      as String,
            masteryLevel: null == masteryLevel
                ? _value.masteryLevel
                : masteryLevel // ignore: cast_nullable_to_non_nullable
                      as double,
            questionsAttempted: null == questionsAttempted
                ? _value.questionsAttempted
                : questionsAttempted // ignore: cast_nullable_to_non_nullable
                      as int,
            questionsCorrect: null == questionsCorrect
                ? _value.questionsCorrect
                : questionsCorrect // ignore: cast_nullable_to_non_nullable
                      as int,
            timeSpentMinutes: null == timeSpentMinutes
                ? _value.timeSpentMinutes
                : timeSpentMinutes // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopicStrengthImplCopyWith<$Res>
    implements $TopicStrengthCopyWith<$Res> {
  factory _$$TopicStrengthImplCopyWith(
    _$TopicStrengthImpl value,
    $Res Function(_$TopicStrengthImpl) then,
  ) = __$$TopicStrengthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String topicId,
    String topicName,
    double masteryLevel,
    int questionsAttempted,
    int questionsCorrect,
    double timeSpentMinutes,
  });
}

/// @nodoc
class __$$TopicStrengthImplCopyWithImpl<$Res>
    extends _$TopicStrengthCopyWithImpl<$Res, _$TopicStrengthImpl>
    implements _$$TopicStrengthImplCopyWith<$Res> {
  __$$TopicStrengthImplCopyWithImpl(
    _$TopicStrengthImpl _value,
    $Res Function(_$TopicStrengthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopicStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? topicName = null,
    Object? masteryLevel = null,
    Object? questionsAttempted = null,
    Object? questionsCorrect = null,
    Object? timeSpentMinutes = null,
  }) {
    return _then(
      _$TopicStrengthImpl(
        topicId: null == topicId
            ? _value.topicId
            : topicId // ignore: cast_nullable_to_non_nullable
                  as String,
        topicName: null == topicName
            ? _value.topicName
            : topicName // ignore: cast_nullable_to_non_nullable
                  as String,
        masteryLevel: null == masteryLevel
            ? _value.masteryLevel
            : masteryLevel // ignore: cast_nullable_to_non_nullable
                  as double,
        questionsAttempted: null == questionsAttempted
            ? _value.questionsAttempted
            : questionsAttempted // ignore: cast_nullable_to_non_nullable
                  as int,
        questionsCorrect: null == questionsCorrect
            ? _value.questionsCorrect
            : questionsCorrect // ignore: cast_nullable_to_non_nullable
                  as int,
        timeSpentMinutes: null == timeSpentMinutes
            ? _value.timeSpentMinutes
            : timeSpentMinutes // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicStrengthImpl implements _TopicStrength {
  const _$TopicStrengthImpl({
    required this.topicId,
    required this.topicName,
    required this.masteryLevel,
    required this.questionsAttempted,
    required this.questionsCorrect,
    required this.timeSpentMinutes,
  });

  factory _$TopicStrengthImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicStrengthImplFromJson(json);

  @override
  final String topicId;
  @override
  final String topicName;
  @override
  final double masteryLevel;
  // 0-100: 習熟度
  @override
  final int questionsAttempted;
  @override
  final int questionsCorrect;
  @override
  final double timeSpentMinutes;

  @override
  String toString() {
    return 'TopicStrength(topicId: $topicId, topicName: $topicName, masteryLevel: $masteryLevel, questionsAttempted: $questionsAttempted, questionsCorrect: $questionsCorrect, timeSpentMinutes: $timeSpentMinutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicStrengthImpl &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName) &&
            (identical(other.masteryLevel, masteryLevel) ||
                other.masteryLevel == masteryLevel) &&
            (identical(other.questionsAttempted, questionsAttempted) ||
                other.questionsAttempted == questionsAttempted) &&
            (identical(other.questionsCorrect, questionsCorrect) ||
                other.questionsCorrect == questionsCorrect) &&
            (identical(other.timeSpentMinutes, timeSpentMinutes) ||
                other.timeSpentMinutes == timeSpentMinutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    topicId,
    topicName,
    masteryLevel,
    questionsAttempted,
    questionsCorrect,
    timeSpentMinutes,
  );

  /// Create a copy of TopicStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicStrengthImplCopyWith<_$TopicStrengthImpl> get copyWith =>
      __$$TopicStrengthImplCopyWithImpl<_$TopicStrengthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicStrengthImplToJson(this);
  }
}

abstract class _TopicStrength implements TopicStrength {
  const factory _TopicStrength({
    required final String topicId,
    required final String topicName,
    required final double masteryLevel,
    required final int questionsAttempted,
    required final int questionsCorrect,
    required final double timeSpentMinutes,
  }) = _$TopicStrengthImpl;

  factory _TopicStrength.fromJson(Map<String, dynamic> json) =
      _$TopicStrengthImpl.fromJson;

  @override
  String get topicId;
  @override
  String get topicName;
  @override
  double get masteryLevel; // 0-100: 習熟度
  @override
  int get questionsAttempted;
  @override
  int get questionsCorrect;
  @override
  double get timeSpentMinutes;

  /// Create a copy of TopicStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopicStrengthImplCopyWith<_$TopicStrengthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachingGoal _$CoachingGoalFromJson(Map<String, dynamic> json) {
  return _CoachingGoal.fromJson(json);
}

/// @nodoc
mixin _$CoachingGoal {
  String get goalId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get targetSubject => throw _privateConstructorUsedError;
  String get goal =>
      throw _privateConstructorUsedError; // 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
  double get targetValue =>
      throw _privateConstructorUsedError; // 目標値（精度% または 日数など）
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  double get currentProgress => throw _privateConstructorUsedError; // 0-100
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  List<String> get relatedAdvices => throw _privateConstructorUsedError;

  /// Serializes this CoachingGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachingGoalCopyWith<CoachingGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingGoalCopyWith<$Res> {
  factory $CoachingGoalCopyWith(
    CoachingGoal value,
    $Res Function(CoachingGoal) then,
  ) = _$CoachingGoalCopyWithImpl<$Res, CoachingGoal>;
  @useResult
  $Res call({
    String goalId,
    String userId,
    String targetSubject,
    String goal,
    double targetValue,
    DateTime createdAt,
    DateTime deadline,
    double currentProgress,
    bool isCompleted,
    DateTime? completedAt,
    List<String> relatedAdvices,
  });
}

/// @nodoc
class _$CoachingGoalCopyWithImpl<$Res, $Val extends CoachingGoal>
    implements $CoachingGoalCopyWith<$Res> {
  _$CoachingGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalId = null,
    Object? userId = null,
    Object? targetSubject = null,
    Object? goal = null,
    Object? targetValue = null,
    Object? createdAt = null,
    Object? deadline = null,
    Object? currentProgress = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? relatedAdvices = null,
  }) {
    return _then(
      _value.copyWith(
            goalId: null == goalId
                ? _value.goalId
                : goalId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            targetSubject: null == targetSubject
                ? _value.targetSubject
                : targetSubject // ignore: cast_nullable_to_non_nullable
                      as String,
            goal: null == goal
                ? _value.goal
                : goal // ignore: cast_nullable_to_non_nullable
                      as String,
            targetValue: null == targetValue
                ? _value.targetValue
                : targetValue // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            deadline: null == deadline
                ? _value.deadline
                : deadline // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            currentProgress: null == currentProgress
                ? _value.currentProgress
                : currentProgress // ignore: cast_nullable_to_non_nullable
                      as double,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            relatedAdvices: null == relatedAdvices
                ? _value.relatedAdvices
                : relatedAdvices // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachingGoalImplCopyWith<$Res>
    implements $CoachingGoalCopyWith<$Res> {
  factory _$$CoachingGoalImplCopyWith(
    _$CoachingGoalImpl value,
    $Res Function(_$CoachingGoalImpl) then,
  ) = __$$CoachingGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String goalId,
    String userId,
    String targetSubject,
    String goal,
    double targetValue,
    DateTime createdAt,
    DateTime deadline,
    double currentProgress,
    bool isCompleted,
    DateTime? completedAt,
    List<String> relatedAdvices,
  });
}

/// @nodoc
class __$$CoachingGoalImplCopyWithImpl<$Res>
    extends _$CoachingGoalCopyWithImpl<$Res, _$CoachingGoalImpl>
    implements _$$CoachingGoalImplCopyWith<$Res> {
  __$$CoachingGoalImplCopyWithImpl(
    _$CoachingGoalImpl _value,
    $Res Function(_$CoachingGoalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachingGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalId = null,
    Object? userId = null,
    Object? targetSubject = null,
    Object? goal = null,
    Object? targetValue = null,
    Object? createdAt = null,
    Object? deadline = null,
    Object? currentProgress = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? relatedAdvices = null,
  }) {
    return _then(
      _$CoachingGoalImpl(
        goalId: null == goalId
            ? _value.goalId
            : goalId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        targetSubject: null == targetSubject
            ? _value.targetSubject
            : targetSubject // ignore: cast_nullable_to_non_nullable
                  as String,
        goal: null == goal
            ? _value.goal
            : goal // ignore: cast_nullable_to_non_nullable
                  as String,
        targetValue: null == targetValue
            ? _value.targetValue
            : targetValue // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        deadline: null == deadline
            ? _value.deadline
            : deadline // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        currentProgress: null == currentProgress
            ? _value.currentProgress
            : currentProgress // ignore: cast_nullable_to_non_nullable
                  as double,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        relatedAdvices: null == relatedAdvices
            ? _value._relatedAdvices
            : relatedAdvices // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingGoalImpl implements _CoachingGoal {
  const _$CoachingGoalImpl({
    required this.goalId,
    required this.userId,
    required this.targetSubject,
    required this.goal,
    required this.targetValue,
    required this.createdAt,
    required this.deadline,
    required this.currentProgress,
    required this.isCompleted,
    required this.completedAt,
    required final List<String> relatedAdvices,
  }) : _relatedAdvices = relatedAdvices;

  factory _$CoachingGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingGoalImplFromJson(json);

  @override
  final String goalId;
  @override
  final String userId;
  @override
  final String targetSubject;
  @override
  final String goal;
  // 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
  @override
  final double targetValue;
  // 目標値（精度% または 日数など）
  @override
  final DateTime createdAt;
  @override
  final DateTime deadline;
  @override
  final double currentProgress;
  // 0-100
  @override
  final bool isCompleted;
  @override
  final DateTime? completedAt;
  final List<String> _relatedAdvices;
  @override
  List<String> get relatedAdvices {
    if (_relatedAdvices is EqualUnmodifiableListView) return _relatedAdvices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedAdvices);
  }

  @override
  String toString() {
    return 'CoachingGoal(goalId: $goalId, userId: $userId, targetSubject: $targetSubject, goal: $goal, targetValue: $targetValue, createdAt: $createdAt, deadline: $deadline, currentProgress: $currentProgress, isCompleted: $isCompleted, completedAt: $completedAt, relatedAdvices: $relatedAdvices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingGoalImpl &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetSubject, targetSubject) ||
                other.targetSubject == targetSubject) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.targetValue, targetValue) ||
                other.targetValue == targetValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.currentProgress, currentProgress) ||
                other.currentProgress == currentProgress) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(
              other._relatedAdvices,
              _relatedAdvices,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    goalId,
    userId,
    targetSubject,
    goal,
    targetValue,
    createdAt,
    deadline,
    currentProgress,
    isCompleted,
    completedAt,
    const DeepCollectionEquality().hash(_relatedAdvices),
  );

  /// Create a copy of CoachingGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingGoalImplCopyWith<_$CoachingGoalImpl> get copyWith =>
      __$$CoachingGoalImplCopyWithImpl<_$CoachingGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingGoalImplToJson(this);
  }
}

abstract class _CoachingGoal implements CoachingGoal {
  const factory _CoachingGoal({
    required final String goalId,
    required final String userId,
    required final String targetSubject,
    required final String goal,
    required final double targetValue,
    required final DateTime createdAt,
    required final DateTime deadline,
    required final double currentProgress,
    required final bool isCompleted,
    required final DateTime? completedAt,
    required final List<String> relatedAdvices,
  }) = _$CoachingGoalImpl;

  factory _CoachingGoal.fromJson(Map<String, dynamic> json) =
      _$CoachingGoalImpl.fromJson;

  @override
  String get goalId;
  @override
  String get userId;
  @override
  String get targetSubject;
  @override
  String get goal; // 'improve_accuracy', 'consistent_learning', 'learn_new_topic'
  @override
  double get targetValue; // 目標値（精度% または 日数など）
  @override
  DateTime get createdAt;
  @override
  DateTime get deadline;
  @override
  double get currentProgress; // 0-100
  @override
  bool get isCompleted;
  @override
  DateTime? get completedAt;
  @override
  List<String> get relatedAdvices;

  /// Create a copy of CoachingGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachingGoalImplCopyWith<_$CoachingGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachingFeedback _$CoachingFeedbackFromJson(Map<String, dynamic> json) {
  return _CoachingFeedback.fromJson(json);
}

/// @nodoc
mixin _$CoachingFeedback {
  String get feedbackId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get adviceId => throw _privateConstructorUsedError;
  DateTime get givenAt => throw _privateConstructorUsedError;
  bool get wasHelpful => throw _privateConstructorUsedError;
  int get helpfulnessScore => throw _privateConstructorUsedError; // 1-5
  String get userFeedback => throw _privateConstructorUsedError; // ユーザーの感想
  DateTime? get feedbackAt => throw _privateConstructorUsedError;

  /// Serializes this CoachingFeedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachingFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachingFeedbackCopyWith<CoachingFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingFeedbackCopyWith<$Res> {
  factory $CoachingFeedbackCopyWith(
    CoachingFeedback value,
    $Res Function(CoachingFeedback) then,
  ) = _$CoachingFeedbackCopyWithImpl<$Res, CoachingFeedback>;
  @useResult
  $Res call({
    String feedbackId,
    String userId,
    String adviceId,
    DateTime givenAt,
    bool wasHelpful,
    int helpfulnessScore,
    String userFeedback,
    DateTime? feedbackAt,
  });
}

/// @nodoc
class _$CoachingFeedbackCopyWithImpl<$Res, $Val extends CoachingFeedback>
    implements $CoachingFeedbackCopyWith<$Res> {
  _$CoachingFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachingFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackId = null,
    Object? userId = null,
    Object? adviceId = null,
    Object? givenAt = null,
    Object? wasHelpful = null,
    Object? helpfulnessScore = null,
    Object? userFeedback = null,
    Object? feedbackAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            feedbackId: null == feedbackId
                ? _value.feedbackId
                : feedbackId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            adviceId: null == adviceId
                ? _value.adviceId
                : adviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            givenAt: null == givenAt
                ? _value.givenAt
                : givenAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            wasHelpful: null == wasHelpful
                ? _value.wasHelpful
                : wasHelpful // ignore: cast_nullable_to_non_nullable
                      as bool,
            helpfulnessScore: null == helpfulnessScore
                ? _value.helpfulnessScore
                : helpfulnessScore // ignore: cast_nullable_to_non_nullable
                      as int,
            userFeedback: null == userFeedback
                ? _value.userFeedback
                : userFeedback // ignore: cast_nullable_to_non_nullable
                      as String,
            feedbackAt: freezed == feedbackAt
                ? _value.feedbackAt
                : feedbackAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachingFeedbackImplCopyWith<$Res>
    implements $CoachingFeedbackCopyWith<$Res> {
  factory _$$CoachingFeedbackImplCopyWith(
    _$CoachingFeedbackImpl value,
    $Res Function(_$CoachingFeedbackImpl) then,
  ) = __$$CoachingFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String feedbackId,
    String userId,
    String adviceId,
    DateTime givenAt,
    bool wasHelpful,
    int helpfulnessScore,
    String userFeedback,
    DateTime? feedbackAt,
  });
}

/// @nodoc
class __$$CoachingFeedbackImplCopyWithImpl<$Res>
    extends _$CoachingFeedbackCopyWithImpl<$Res, _$CoachingFeedbackImpl>
    implements _$$CoachingFeedbackImplCopyWith<$Res> {
  __$$CoachingFeedbackImplCopyWithImpl(
    _$CoachingFeedbackImpl _value,
    $Res Function(_$CoachingFeedbackImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachingFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbackId = null,
    Object? userId = null,
    Object? adviceId = null,
    Object? givenAt = null,
    Object? wasHelpful = null,
    Object? helpfulnessScore = null,
    Object? userFeedback = null,
    Object? feedbackAt = freezed,
  }) {
    return _then(
      _$CoachingFeedbackImpl(
        feedbackId: null == feedbackId
            ? _value.feedbackId
            : feedbackId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        adviceId: null == adviceId
            ? _value.adviceId
            : adviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        givenAt: null == givenAt
            ? _value.givenAt
            : givenAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        wasHelpful: null == wasHelpful
            ? _value.wasHelpful
            : wasHelpful // ignore: cast_nullable_to_non_nullable
                  as bool,
        helpfulnessScore: null == helpfulnessScore
            ? _value.helpfulnessScore
            : helpfulnessScore // ignore: cast_nullable_to_non_nullable
                  as int,
        userFeedback: null == userFeedback
            ? _value.userFeedback
            : userFeedback // ignore: cast_nullable_to_non_nullable
                  as String,
        feedbackAt: freezed == feedbackAt
            ? _value.feedbackAt
            : feedbackAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingFeedbackImpl implements _CoachingFeedback {
  const _$CoachingFeedbackImpl({
    required this.feedbackId,
    required this.userId,
    required this.adviceId,
    required this.givenAt,
    required this.wasHelpful,
    required this.helpfulnessScore,
    required this.userFeedback,
    required this.feedbackAt,
  });

  factory _$CoachingFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingFeedbackImplFromJson(json);

  @override
  final String feedbackId;
  @override
  final String userId;
  @override
  final String adviceId;
  @override
  final DateTime givenAt;
  @override
  final bool wasHelpful;
  @override
  final int helpfulnessScore;
  // 1-5
  @override
  final String userFeedback;
  // ユーザーの感想
  @override
  final DateTime? feedbackAt;

  @override
  String toString() {
    return 'CoachingFeedback(feedbackId: $feedbackId, userId: $userId, adviceId: $adviceId, givenAt: $givenAt, wasHelpful: $wasHelpful, helpfulnessScore: $helpfulnessScore, userFeedback: $userFeedback, feedbackAt: $feedbackAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingFeedbackImpl &&
            (identical(other.feedbackId, feedbackId) ||
                other.feedbackId == feedbackId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adviceId, adviceId) ||
                other.adviceId == adviceId) &&
            (identical(other.givenAt, givenAt) || other.givenAt == givenAt) &&
            (identical(other.wasHelpful, wasHelpful) ||
                other.wasHelpful == wasHelpful) &&
            (identical(other.helpfulnessScore, helpfulnessScore) ||
                other.helpfulnessScore == helpfulnessScore) &&
            (identical(other.userFeedback, userFeedback) ||
                other.userFeedback == userFeedback) &&
            (identical(other.feedbackAt, feedbackAt) ||
                other.feedbackAt == feedbackAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    feedbackId,
    userId,
    adviceId,
    givenAt,
    wasHelpful,
    helpfulnessScore,
    userFeedback,
    feedbackAt,
  );

  /// Create a copy of CoachingFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingFeedbackImplCopyWith<_$CoachingFeedbackImpl> get copyWith =>
      __$$CoachingFeedbackImplCopyWithImpl<_$CoachingFeedbackImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingFeedbackImplToJson(this);
  }
}

abstract class _CoachingFeedback implements CoachingFeedback {
  const factory _CoachingFeedback({
    required final String feedbackId,
    required final String userId,
    required final String adviceId,
    required final DateTime givenAt,
    required final bool wasHelpful,
    required final int helpfulnessScore,
    required final String userFeedback,
    required final DateTime? feedbackAt,
  }) = _$CoachingFeedbackImpl;

  factory _CoachingFeedback.fromJson(Map<String, dynamic> json) =
      _$CoachingFeedbackImpl.fromJson;

  @override
  String get feedbackId;
  @override
  String get userId;
  @override
  String get adviceId;
  @override
  DateTime get givenAt;
  @override
  bool get wasHelpful;
  @override
  int get helpfulnessScore; // 1-5
  @override
  String get userFeedback; // ユーザーの感想
  @override
  DateTime? get feedbackAt;

  /// Create a copy of CoachingFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachingFeedbackImplCopyWith<_$CoachingFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AICoachPrompt _$AICoachPromptFromJson(Map<String, dynamic> json) {
  return _AICoachPrompt.fromJson(json);
}

/// @nodoc
mixin _$AICoachPrompt {
  String get userId => throw _privateConstructorUsedError;
  List<String> get subjectIds => throw _privateConstructorUsedError;
  LearningInsight get insight => throw _privateConstructorUsedError;
  List<CoachingGoal> get activeGoals => throw _privateConstructorUsedError;
  int get maxAdvices => throw _privateConstructorUsedError;
  String get coachingStyle => throw _privateConstructorUsedError;

  /// Serializes this AICoachPrompt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AICoachPromptCopyWith<AICoachPrompt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AICoachPromptCopyWith<$Res> {
  factory $AICoachPromptCopyWith(
    AICoachPrompt value,
    $Res Function(AICoachPrompt) then,
  ) = _$AICoachPromptCopyWithImpl<$Res, AICoachPrompt>;
  @useResult
  $Res call({
    String userId,
    List<String> subjectIds,
    LearningInsight insight,
    List<CoachingGoal> activeGoals,
    int maxAdvices,
    String coachingStyle,
  });

  $LearningInsightCopyWith<$Res> get insight;
}

/// @nodoc
class _$AICoachPromptCopyWithImpl<$Res, $Val extends AICoachPrompt>
    implements $AICoachPromptCopyWith<$Res> {
  _$AICoachPromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subjectIds = null,
    Object? insight = null,
    Object? activeGoals = null,
    Object? maxAdvices = null,
    Object? coachingStyle = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            subjectIds: null == subjectIds
                ? _value.subjectIds
                : subjectIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            insight: null == insight
                ? _value.insight
                : insight // ignore: cast_nullable_to_non_nullable
                      as LearningInsight,
            activeGoals: null == activeGoals
                ? _value.activeGoals
                : activeGoals // ignore: cast_nullable_to_non_nullable
                      as List<CoachingGoal>,
            maxAdvices: null == maxAdvices
                ? _value.maxAdvices
                : maxAdvices // ignore: cast_nullable_to_non_nullable
                      as int,
            coachingStyle: null == coachingStyle
                ? _value.coachingStyle
                : coachingStyle // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LearningInsightCopyWith<$Res> get insight {
    return $LearningInsightCopyWith<$Res>(_value.insight, (value) {
      return _then(_value.copyWith(insight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AICoachPromptImplCopyWith<$Res>
    implements $AICoachPromptCopyWith<$Res> {
  factory _$$AICoachPromptImplCopyWith(
    _$AICoachPromptImpl value,
    $Res Function(_$AICoachPromptImpl) then,
  ) = __$$AICoachPromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    List<String> subjectIds,
    LearningInsight insight,
    List<CoachingGoal> activeGoals,
    int maxAdvices,
    String coachingStyle,
  });

  @override
  $LearningInsightCopyWith<$Res> get insight;
}

/// @nodoc
class __$$AICoachPromptImplCopyWithImpl<$Res>
    extends _$AICoachPromptCopyWithImpl<$Res, _$AICoachPromptImpl>
    implements _$$AICoachPromptImplCopyWith<$Res> {
  __$$AICoachPromptImplCopyWithImpl(
    _$AICoachPromptImpl _value,
    $Res Function(_$AICoachPromptImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? subjectIds = null,
    Object? insight = null,
    Object? activeGoals = null,
    Object? maxAdvices = null,
    Object? coachingStyle = null,
  }) {
    return _then(
      _$AICoachPromptImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        subjectIds: null == subjectIds
            ? _value._subjectIds
            : subjectIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        insight: null == insight
            ? _value.insight
            : insight // ignore: cast_nullable_to_non_nullable
                  as LearningInsight,
        activeGoals: null == activeGoals
            ? _value._activeGoals
            : activeGoals // ignore: cast_nullable_to_non_nullable
                  as List<CoachingGoal>,
        maxAdvices: null == maxAdvices
            ? _value.maxAdvices
            : maxAdvices // ignore: cast_nullable_to_non_nullable
                  as int,
        coachingStyle: null == coachingStyle
            ? _value.coachingStyle
            : coachingStyle // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AICoachPromptImpl implements _AICoachPrompt {
  const _$AICoachPromptImpl({
    required this.userId,
    required final List<String> subjectIds,
    required this.insight,
    required final List<CoachingGoal> activeGoals,
    required this.maxAdvices,
    required this.coachingStyle,
  }) : _subjectIds = subjectIds,
       _activeGoals = activeGoals;

  factory _$AICoachPromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$AICoachPromptImplFromJson(json);

  @override
  final String userId;
  final List<String> _subjectIds;
  @override
  List<String> get subjectIds {
    if (_subjectIds is EqualUnmodifiableListView) return _subjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjectIds);
  }

  @override
  final LearningInsight insight;
  final List<CoachingGoal> _activeGoals;
  @override
  List<CoachingGoal> get activeGoals {
    if (_activeGoals is EqualUnmodifiableListView) return _activeGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeGoals);
  }

  @override
  final int maxAdvices;
  @override
  final String coachingStyle;

  @override
  String toString() {
    return 'AICoachPrompt(userId: $userId, subjectIds: $subjectIds, insight: $insight, activeGoals: $activeGoals, maxAdvices: $maxAdvices, coachingStyle: $coachingStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AICoachPromptImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(
              other._subjectIds,
              _subjectIds,
            ) &&
            (identical(other.insight, insight) || other.insight == insight) &&
            const DeepCollectionEquality().equals(
              other._activeGoals,
              _activeGoals,
            ) &&
            (identical(other.maxAdvices, maxAdvices) ||
                other.maxAdvices == maxAdvices) &&
            (identical(other.coachingStyle, coachingStyle) ||
                other.coachingStyle == coachingStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    const DeepCollectionEquality().hash(_subjectIds),
    insight,
    const DeepCollectionEquality().hash(_activeGoals),
    maxAdvices,
    coachingStyle,
  );

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AICoachPromptImplCopyWith<_$AICoachPromptImpl> get copyWith =>
      __$$AICoachPromptImplCopyWithImpl<_$AICoachPromptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AICoachPromptImplToJson(this);
  }
}

abstract class _AICoachPrompt implements AICoachPrompt {
  const factory _AICoachPrompt({
    required final String userId,
    required final List<String> subjectIds,
    required final LearningInsight insight,
    required final List<CoachingGoal> activeGoals,
    required final int maxAdvices,
    required final String coachingStyle,
  }) = _$AICoachPromptImpl;

  factory _AICoachPrompt.fromJson(Map<String, dynamic> json) =
      _$AICoachPromptImpl.fromJson;

  @override
  String get userId;
  @override
  List<String> get subjectIds;
  @override
  LearningInsight get insight;
  @override
  List<CoachingGoal> get activeGoals;
  @override
  int get maxAdvices;
  @override
  String get coachingStyle;

  /// Create a copy of AICoachPrompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AICoachPromptImplCopyWith<_$AICoachPromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoachingAnalyticsEvent _$CoachingAnalyticsEventFromJson(
  Map<String, dynamic> json,
) {
  return _CoachingAnalyticsEvent.fromJson(json);
}

/// @nodoc
mixin _$CoachingAnalyticsEvent {
  String get userId => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  String get eventType =>
      throw _privateConstructorUsedError; // 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
  DateTime get eventTime => throw _privateConstructorUsedError;
  Map<String, dynamic> get eventData => throw _privateConstructorUsedError;

  /// Serializes this CoachingAnalyticsEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachingAnalyticsEventCopyWith<CoachingAnalyticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachingAnalyticsEventCopyWith<$Res> {
  factory $CoachingAnalyticsEventCopyWith(
    CoachingAnalyticsEvent value,
    $Res Function(CoachingAnalyticsEvent) then,
  ) = _$CoachingAnalyticsEventCopyWithImpl<$Res, CoachingAnalyticsEvent>;
  @useResult
  $Res call({
    String userId,
    String sessionId,
    String eventType,
    DateTime eventTime,
    Map<String, dynamic> eventData,
  });
}

/// @nodoc
class _$CoachingAnalyticsEventCopyWithImpl<
  $Res,
  $Val extends CoachingAnalyticsEvent
>
    implements $CoachingAnalyticsEventCopyWith<$Res> {
  _$CoachingAnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sessionId = null,
    Object? eventType = null,
    Object? eventTime = null,
    Object? eventData = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            sessionId: null == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String,
            eventType: null == eventType
                ? _value.eventType
                : eventType // ignore: cast_nullable_to_non_nullable
                      as String,
            eventTime: null == eventTime
                ? _value.eventTime
                : eventTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            eventData: null == eventData
                ? _value.eventData
                : eventData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachingAnalyticsEventImplCopyWith<$Res>
    implements $CoachingAnalyticsEventCopyWith<$Res> {
  factory _$$CoachingAnalyticsEventImplCopyWith(
    _$CoachingAnalyticsEventImpl value,
    $Res Function(_$CoachingAnalyticsEventImpl) then,
  ) = __$$CoachingAnalyticsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String sessionId,
    String eventType,
    DateTime eventTime,
    Map<String, dynamic> eventData,
  });
}

/// @nodoc
class __$$CoachingAnalyticsEventImplCopyWithImpl<$Res>
    extends
        _$CoachingAnalyticsEventCopyWithImpl<$Res, _$CoachingAnalyticsEventImpl>
    implements _$$CoachingAnalyticsEventImplCopyWith<$Res> {
  __$$CoachingAnalyticsEventImplCopyWithImpl(
    _$CoachingAnalyticsEventImpl _value,
    $Res Function(_$CoachingAnalyticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sessionId = null,
    Object? eventType = null,
    Object? eventTime = null,
    Object? eventData = null,
  }) {
    return _then(
      _$CoachingAnalyticsEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        sessionId: null == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String,
        eventType: null == eventType
            ? _value.eventType
            : eventType // ignore: cast_nullable_to_non_nullable
                  as String,
        eventTime: null == eventTime
            ? _value.eventTime
            : eventTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        eventData: null == eventData
            ? _value._eventData
            : eventData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachingAnalyticsEventImpl implements _CoachingAnalyticsEvent {
  const _$CoachingAnalyticsEventImpl({
    required this.userId,
    required this.sessionId,
    required this.eventType,
    required this.eventTime,
    required final Map<String, dynamic> eventData,
  }) : _eventData = eventData;

  factory _$CoachingAnalyticsEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachingAnalyticsEventImplFromJson(json);

  @override
  final String userId;
  @override
  final String sessionId;
  @override
  final String eventType;
  // 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
  @override
  final DateTime eventTime;
  final Map<String, dynamic> _eventData;
  @override
  Map<String, dynamic> get eventData {
    if (_eventData is EqualUnmodifiableMapView) return _eventData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventData);
  }

  @override
  String toString() {
    return 'CoachingAnalyticsEvent(userId: $userId, sessionId: $sessionId, eventType: $eventType, eventTime: $eventTime, eventData: $eventData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachingAnalyticsEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.eventTime, eventTime) ||
                other.eventTime == eventTime) &&
            const DeepCollectionEquality().equals(
              other._eventData,
              _eventData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    sessionId,
    eventType,
    eventTime,
    const DeepCollectionEquality().hash(_eventData),
  );

  /// Create a copy of CoachingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachingAnalyticsEventImplCopyWith<_$CoachingAnalyticsEventImpl>
  get copyWith =>
      __$$CoachingAnalyticsEventImplCopyWithImpl<_$CoachingAnalyticsEventImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachingAnalyticsEventImplToJson(this);
  }
}

abstract class _CoachingAnalyticsEvent implements CoachingAnalyticsEvent {
  const factory _CoachingAnalyticsEvent({
    required final String userId,
    required final String sessionId,
    required final String eventType,
    required final DateTime eventTime,
    required final Map<String, dynamic> eventData,
  }) = _$CoachingAnalyticsEventImpl;

  factory _CoachingAnalyticsEvent.fromJson(Map<String, dynamic> json) =
      _$CoachingAnalyticsEventImpl.fromJson;

  @override
  String get userId;
  @override
  String get sessionId;
  @override
  String get eventType; // 'advice_given', 'advice_acted', 'goal_achieved', 'feedback_provided'
  @override
  DateTime get eventTime;
  @override
  Map<String, dynamic> get eventData;

  /// Create a copy of CoachingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachingAnalyticsEventImplCopyWith<_$CoachingAnalyticsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
