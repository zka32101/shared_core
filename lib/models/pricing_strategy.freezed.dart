// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PricingTier _$PricingTierFromJson(Map<String, dynamic> json) {
  return _PricingTier.fromJson(json);
}

/// @nodoc
mixin _$PricingTier {
  UserSegment get segment => throw _privateConstructorUsedError;
  int get basePrice => throw _privateConstructorUsedError; // 基本価格（¥）
  double get discountPercent => throw _privateConstructorUsedError; // 割引率（%）
  String get label => throw _privateConstructorUsedError; // 表示テキスト
  String? get description => throw _privateConstructorUsedError; // 説明（オプション）
  List<String> get bonusFeatures => throw _privateConstructorUsedError;

  /// Serializes this PricingTier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingTierCopyWith<PricingTier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingTierCopyWith<$Res> {
  factory $PricingTierCopyWith(
    PricingTier value,
    $Res Function(PricingTier) then,
  ) = _$PricingTierCopyWithImpl<$Res, PricingTier>;
  @useResult
  $Res call({
    UserSegment segment,
    int basePrice,
    double discountPercent,
    String label,
    String? description,
    List<String> bonusFeatures,
  });
}

/// @nodoc
class _$PricingTierCopyWithImpl<$Res, $Val extends PricingTier>
    implements $PricingTierCopyWith<$Res> {
  _$PricingTierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segment = null,
    Object? basePrice = null,
    Object? discountPercent = null,
    Object? label = null,
    Object? description = freezed,
    Object? bonusFeatures = null,
  }) {
    return _then(
      _value.copyWith(
            segment: null == segment
                ? _value.segment
                : segment // ignore: cast_nullable_to_non_nullable
                      as UserSegment,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as int,
            discountPercent: null == discountPercent
                ? _value.discountPercent
                : discountPercent // ignore: cast_nullable_to_non_nullable
                      as double,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            bonusFeatures: null == bonusFeatures
                ? _value.bonusFeatures
                : bonusFeatures // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingTierImplCopyWith<$Res>
    implements $PricingTierCopyWith<$Res> {
  factory _$$PricingTierImplCopyWith(
    _$PricingTierImpl value,
    $Res Function(_$PricingTierImpl) then,
  ) = __$$PricingTierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    UserSegment segment,
    int basePrice,
    double discountPercent,
    String label,
    String? description,
    List<String> bonusFeatures,
  });
}

/// @nodoc
class __$$PricingTierImplCopyWithImpl<$Res>
    extends _$PricingTierCopyWithImpl<$Res, _$PricingTierImpl>
    implements _$$PricingTierImplCopyWith<$Res> {
  __$$PricingTierImplCopyWithImpl(
    _$PricingTierImpl _value,
    $Res Function(_$PricingTierImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingTier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segment = null,
    Object? basePrice = null,
    Object? discountPercent = null,
    Object? label = null,
    Object? description = freezed,
    Object? bonusFeatures = null,
  }) {
    return _then(
      _$PricingTierImpl(
        segment: null == segment
            ? _value.segment
            : segment // ignore: cast_nullable_to_non_nullable
                  as UserSegment,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as int,
        discountPercent: null == discountPercent
            ? _value.discountPercent
            : discountPercent // ignore: cast_nullable_to_non_nullable
                  as double,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        bonusFeatures: null == bonusFeatures
            ? _value._bonusFeatures
            : bonusFeatures // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingTierImpl implements _PricingTier {
  const _$PricingTierImpl({
    required this.segment,
    required this.basePrice,
    required this.discountPercent,
    required this.label,
    this.description,
    final List<String> bonusFeatures = const [],
  }) : _bonusFeatures = bonusFeatures;

  factory _$PricingTierImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingTierImplFromJson(json);

  @override
  final UserSegment segment;
  @override
  final int basePrice;
  // 基本価格（¥）
  @override
  final double discountPercent;
  // 割引率（%）
  @override
  final String label;
  // 表示テキスト
  @override
  final String? description;
  // 説明（オプション）
  final List<String> _bonusFeatures;
  // 説明（オプション）
  @override
  @JsonKey()
  List<String> get bonusFeatures {
    if (_bonusFeatures is EqualUnmodifiableListView) return _bonusFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bonusFeatures);
  }

  @override
  String toString() {
    return 'PricingTier(segment: $segment, basePrice: $basePrice, discountPercent: $discountPercent, label: $label, description: $description, bonusFeatures: $bonusFeatures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingTierImpl &&
            (identical(other.segment, segment) || other.segment == segment) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._bonusFeatures,
              _bonusFeatures,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    segment,
    basePrice,
    discountPercent,
    label,
    description,
    const DeepCollectionEquality().hash(_bonusFeatures),
  );

  /// Create a copy of PricingTier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingTierImplCopyWith<_$PricingTierImpl> get copyWith =>
      __$$PricingTierImplCopyWithImpl<_$PricingTierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingTierImplToJson(this);
  }
}

abstract class _PricingTier implements PricingTier {
  const factory _PricingTier({
    required final UserSegment segment,
    required final int basePrice,
    required final double discountPercent,
    required final String label,
    final String? description,
    final List<String> bonusFeatures,
  }) = _$PricingTierImpl;

  factory _PricingTier.fromJson(Map<String, dynamic> json) =
      _$PricingTierImpl.fromJson;

  @override
  UserSegment get segment;
  @override
  int get basePrice; // 基本価格（¥）
  @override
  double get discountPercent; // 割引率（%）
  @override
  String get label; // 表示テキスト
  @override
  String? get description; // 説明（オプション）
  @override
  List<String> get bonusFeatures;

  /// Create a copy of PricingTier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingTierImplCopyWith<_$PricingTierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DynamicPrice _$DynamicPriceFromJson(Map<String, dynamic> json) {
  return _DynamicPrice.fromJson(json);
}

/// @nodoc
mixin _$DynamicPrice {
  String get userId => throw _privateConstructorUsedError;
  UserSegment get detectedSegment => throw _privateConstructorUsedError;
  int get displayPrice => throw _privateConstructorUsedError; // 表示価格
  int get basePrice => throw _privateConstructorUsedError; // 通常価格（¥120）
  double get appliedDiscount => throw _privateConstructorUsedError; // 適用割引率
  String get discountReason => throw _privateConstructorUsedError; // 割引理由（表示用）
  DateTime get validUntil => throw _privateConstructorUsedError; // オファー有効期限
  bool get isLimited => throw _privateConstructorUsedError;

  /// Serializes this DynamicPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicPriceCopyWith<DynamicPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicPriceCopyWith<$Res> {
  factory $DynamicPriceCopyWith(
    DynamicPrice value,
    $Res Function(DynamicPrice) then,
  ) = _$DynamicPriceCopyWithImpl<$Res, DynamicPrice>;
  @useResult
  $Res call({
    String userId,
    UserSegment detectedSegment,
    int displayPrice,
    int basePrice,
    double appliedDiscount,
    String discountReason,
    DateTime validUntil,
    bool isLimited,
  });
}

/// @nodoc
class _$DynamicPriceCopyWithImpl<$Res, $Val extends DynamicPrice>
    implements $DynamicPriceCopyWith<$Res> {
  _$DynamicPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? detectedSegment = null,
    Object? displayPrice = null,
    Object? basePrice = null,
    Object? appliedDiscount = null,
    Object? discountReason = null,
    Object? validUntil = null,
    Object? isLimited = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            detectedSegment: null == detectedSegment
                ? _value.detectedSegment
                : detectedSegment // ignore: cast_nullable_to_non_nullable
                      as UserSegment,
            displayPrice: null == displayPrice
                ? _value.displayPrice
                : displayPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as int,
            appliedDiscount: null == appliedDiscount
                ? _value.appliedDiscount
                : appliedDiscount // ignore: cast_nullable_to_non_nullable
                      as double,
            discountReason: null == discountReason
                ? _value.discountReason
                : discountReason // ignore: cast_nullable_to_non_nullable
                      as String,
            validUntil: null == validUntil
                ? _value.validUntil
                : validUntil // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isLimited: null == isLimited
                ? _value.isLimited
                : isLimited // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DynamicPriceImplCopyWith<$Res>
    implements $DynamicPriceCopyWith<$Res> {
  factory _$$DynamicPriceImplCopyWith(
    _$DynamicPriceImpl value,
    $Res Function(_$DynamicPriceImpl) then,
  ) = __$$DynamicPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    UserSegment detectedSegment,
    int displayPrice,
    int basePrice,
    double appliedDiscount,
    String discountReason,
    DateTime validUntil,
    bool isLimited,
  });
}

/// @nodoc
class __$$DynamicPriceImplCopyWithImpl<$Res>
    extends _$DynamicPriceCopyWithImpl<$Res, _$DynamicPriceImpl>
    implements _$$DynamicPriceImplCopyWith<$Res> {
  __$$DynamicPriceImplCopyWithImpl(
    _$DynamicPriceImpl _value,
    $Res Function(_$DynamicPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DynamicPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? detectedSegment = null,
    Object? displayPrice = null,
    Object? basePrice = null,
    Object? appliedDiscount = null,
    Object? discountReason = null,
    Object? validUntil = null,
    Object? isLimited = null,
  }) {
    return _then(
      _$DynamicPriceImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        detectedSegment: null == detectedSegment
            ? _value.detectedSegment
            : detectedSegment // ignore: cast_nullable_to_non_nullable
                  as UserSegment,
        displayPrice: null == displayPrice
            ? _value.displayPrice
            : displayPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as int,
        appliedDiscount: null == appliedDiscount
            ? _value.appliedDiscount
            : appliedDiscount // ignore: cast_nullable_to_non_nullable
                  as double,
        discountReason: null == discountReason
            ? _value.discountReason
            : discountReason // ignore: cast_nullable_to_non_nullable
                  as String,
        validUntil: null == validUntil
            ? _value.validUntil
            : validUntil // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isLimited: null == isLimited
            ? _value.isLimited
            : isLimited // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicPriceImpl implements _DynamicPrice {
  const _$DynamicPriceImpl({
    required this.userId,
    required this.detectedSegment,
    required this.displayPrice,
    required this.basePrice,
    required this.appliedDiscount,
    required this.discountReason,
    required this.validUntil,
    required this.isLimited,
  });

  factory _$DynamicPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicPriceImplFromJson(json);

  @override
  final String userId;
  @override
  final UserSegment detectedSegment;
  @override
  final int displayPrice;
  // 表示価格
  @override
  final int basePrice;
  // 通常価格（¥120）
  @override
  final double appliedDiscount;
  // 適用割引率
  @override
  final String discountReason;
  // 割引理由（表示用）
  @override
  final DateTime validUntil;
  // オファー有効期限
  @override
  final bool isLimited;

  @override
  String toString() {
    return 'DynamicPrice(userId: $userId, detectedSegment: $detectedSegment, displayPrice: $displayPrice, basePrice: $basePrice, appliedDiscount: $appliedDiscount, discountReason: $discountReason, validUntil: $validUntil, isLimited: $isLimited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicPriceImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.detectedSegment, detectedSegment) ||
                other.detectedSegment == detectedSegment) &&
            (identical(other.displayPrice, displayPrice) ||
                other.displayPrice == displayPrice) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.appliedDiscount, appliedDiscount) ||
                other.appliedDiscount == appliedDiscount) &&
            (identical(other.discountReason, discountReason) ||
                other.discountReason == discountReason) &&
            (identical(other.validUntil, validUntil) ||
                other.validUntil == validUntil) &&
            (identical(other.isLimited, isLimited) ||
                other.isLimited == isLimited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    detectedSegment,
    displayPrice,
    basePrice,
    appliedDiscount,
    discountReason,
    validUntil,
    isLimited,
  );

  /// Create a copy of DynamicPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicPriceImplCopyWith<_$DynamicPriceImpl> get copyWith =>
      __$$DynamicPriceImplCopyWithImpl<_$DynamicPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicPriceImplToJson(this);
  }
}

abstract class _DynamicPrice implements DynamicPrice {
  const factory _DynamicPrice({
    required final String userId,
    required final UserSegment detectedSegment,
    required final int displayPrice,
    required final int basePrice,
    required final double appliedDiscount,
    required final String discountReason,
    required final DateTime validUntil,
    required final bool isLimited,
  }) = _$DynamicPriceImpl;

  factory _DynamicPrice.fromJson(Map<String, dynamic> json) =
      _$DynamicPriceImpl.fromJson;

  @override
  String get userId;
  @override
  UserSegment get detectedSegment;
  @override
  int get displayPrice; // 表示価格
  @override
  int get basePrice; // 通常価格（¥120）
  @override
  double get appliedDiscount; // 適用割引率
  @override
  String get discountReason; // 割引理由（表示用）
  @override
  DateTime get validUntil; // オファー有効期限
  @override
  bool get isLimited;

  /// Create a copy of DynamicPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicPriceImplCopyWith<_$DynamicPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonalOffer _$SeasonalOfferFromJson(Map<String, dynamic> json) {
  return _SeasonalOffer.fromJson(json);
}

/// @nodoc
mixin _$SeasonalOffer {
  String get name => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  int get offerPrice => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this SeasonalOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeasonalOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonalOfferCopyWith<SeasonalOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonalOfferCopyWith<$Res> {
  factory $SeasonalOfferCopyWith(
    SeasonalOffer value,
    $Res Function(SeasonalOffer) then,
  ) = _$SeasonalOfferCopyWithImpl<$Res, SeasonalOffer>;
  @useResult
  $Res call({
    String name,
    DateTime startDate,
    DateTime endDate,
    int offerPrice,
    String description,
    bool isActive,
  });
}

/// @nodoc
class _$SeasonalOfferCopyWithImpl<$Res, $Val extends SeasonalOffer>
    implements $SeasonalOfferCopyWith<$Res> {
  _$SeasonalOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonalOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? offerPrice = null,
    Object? description = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            offerPrice: null == offerPrice
                ? _value.offerPrice
                : offerPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SeasonalOfferImplCopyWith<$Res>
    implements $SeasonalOfferCopyWith<$Res> {
  factory _$$SeasonalOfferImplCopyWith(
    _$SeasonalOfferImpl value,
    $Res Function(_$SeasonalOfferImpl) then,
  ) = __$$SeasonalOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    DateTime startDate,
    DateTime endDate,
    int offerPrice,
    String description,
    bool isActive,
  });
}

/// @nodoc
class __$$SeasonalOfferImplCopyWithImpl<$Res>
    extends _$SeasonalOfferCopyWithImpl<$Res, _$SeasonalOfferImpl>
    implements _$$SeasonalOfferImplCopyWith<$Res> {
  __$$SeasonalOfferImplCopyWithImpl(
    _$SeasonalOfferImpl _value,
    $Res Function(_$SeasonalOfferImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonalOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? offerPrice = null,
    Object? description = null,
    Object? isActive = null,
  }) {
    return _then(
      _$SeasonalOfferImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        offerPrice: null == offerPrice
            ? _value.offerPrice
            : offerPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$SeasonalOfferImpl implements _SeasonalOffer {
  const _$SeasonalOfferImpl({
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.offerPrice,
    required this.description,
    required this.isActive,
  });

  factory _$SeasonalOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonalOfferImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final int offerPrice;
  @override
  final String description;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'SeasonalOffer(name: $name, startDate: $startDate, endDate: $endDate, offerPrice: $offerPrice, description: $description, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonalOfferImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    startDate,
    endDate,
    offerPrice,
    description,
    isActive,
  );

  /// Create a copy of SeasonalOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonalOfferImplCopyWith<_$SeasonalOfferImpl> get copyWith =>
      __$$SeasonalOfferImplCopyWithImpl<_$SeasonalOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonalOfferImplToJson(this);
  }
}

abstract class _SeasonalOffer implements SeasonalOffer {
  const factory _SeasonalOffer({
    required final String name,
    required final DateTime startDate,
    required final DateTime endDate,
    required final int offerPrice,
    required final String description,
    required final bool isActive,
  }) = _$SeasonalOfferImpl;

  factory _SeasonalOffer.fromJson(Map<String, dynamic> json) =
      _$SeasonalOfferImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  int get offerPrice;
  @override
  String get description;
  @override
  bool get isActive;

  /// Create a copy of SeasonalOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonalOfferImplCopyWith<_$SeasonalOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingConfig _$PricingConfigFromJson(Map<String, dynamic> json) {
  return _PricingConfig.fromJson(json);
}

/// @nodoc
mixin _$PricingConfig {
  int get basePrice => throw _privateConstructorUsedError; // ¥120
  Map<UserSegment, int> get segmentPrices => throw _privateConstructorUsedError;
  List<SeasonalOffer> get seasonalOffers => throw _privateConstructorUsedError;
  int get vipThresholdMinutes =>
      throw _privateConstructorUsedError; // VIP判定: 1000分
  int get inactiveThresholdDays =>
      throw _privateConstructorUsedError; // 非アクティブ: 7日
  int get churnRiskThresholdDays => throw _privateConstructorUsedError;

  /// Serializes this PricingConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingConfigCopyWith<PricingConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingConfigCopyWith<$Res> {
  factory $PricingConfigCopyWith(
    PricingConfig value,
    $Res Function(PricingConfig) then,
  ) = _$PricingConfigCopyWithImpl<$Res, PricingConfig>;
  @useResult
  $Res call({
    int basePrice,
    Map<UserSegment, int> segmentPrices,
    List<SeasonalOffer> seasonalOffers,
    int vipThresholdMinutes,
    int inactiveThresholdDays,
    int churnRiskThresholdDays,
  });
}

/// @nodoc
class _$PricingConfigCopyWithImpl<$Res, $Val extends PricingConfig>
    implements $PricingConfigCopyWith<$Res> {
  _$PricingConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? segmentPrices = null,
    Object? seasonalOffers = null,
    Object? vipThresholdMinutes = null,
    Object? inactiveThresholdDays = null,
    Object? churnRiskThresholdDays = null,
  }) {
    return _then(
      _value.copyWith(
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as int,
            segmentPrices: null == segmentPrices
                ? _value.segmentPrices
                : segmentPrices // ignore: cast_nullable_to_non_nullable
                      as Map<UserSegment, int>,
            seasonalOffers: null == seasonalOffers
                ? _value.seasonalOffers
                : seasonalOffers // ignore: cast_nullable_to_non_nullable
                      as List<SeasonalOffer>,
            vipThresholdMinutes: null == vipThresholdMinutes
                ? _value.vipThresholdMinutes
                : vipThresholdMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            inactiveThresholdDays: null == inactiveThresholdDays
                ? _value.inactiveThresholdDays
                : inactiveThresholdDays // ignore: cast_nullable_to_non_nullable
                      as int,
            churnRiskThresholdDays: null == churnRiskThresholdDays
                ? _value.churnRiskThresholdDays
                : churnRiskThresholdDays // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingConfigImplCopyWith<$Res>
    implements $PricingConfigCopyWith<$Res> {
  factory _$$PricingConfigImplCopyWith(
    _$PricingConfigImpl value,
    $Res Function(_$PricingConfigImpl) then,
  ) = __$$PricingConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int basePrice,
    Map<UserSegment, int> segmentPrices,
    List<SeasonalOffer> seasonalOffers,
    int vipThresholdMinutes,
    int inactiveThresholdDays,
    int churnRiskThresholdDays,
  });
}

/// @nodoc
class __$$PricingConfigImplCopyWithImpl<$Res>
    extends _$PricingConfigCopyWithImpl<$Res, _$PricingConfigImpl>
    implements _$$PricingConfigImplCopyWith<$Res> {
  __$$PricingConfigImplCopyWithImpl(
    _$PricingConfigImpl _value,
    $Res Function(_$PricingConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basePrice = null,
    Object? segmentPrices = null,
    Object? seasonalOffers = null,
    Object? vipThresholdMinutes = null,
    Object? inactiveThresholdDays = null,
    Object? churnRiskThresholdDays = null,
  }) {
    return _then(
      _$PricingConfigImpl(
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as int,
        segmentPrices: null == segmentPrices
            ? _value._segmentPrices
            : segmentPrices // ignore: cast_nullable_to_non_nullable
                  as Map<UserSegment, int>,
        seasonalOffers: null == seasonalOffers
            ? _value._seasonalOffers
            : seasonalOffers // ignore: cast_nullable_to_non_nullable
                  as List<SeasonalOffer>,
        vipThresholdMinutes: null == vipThresholdMinutes
            ? _value.vipThresholdMinutes
            : vipThresholdMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        inactiveThresholdDays: null == inactiveThresholdDays
            ? _value.inactiveThresholdDays
            : inactiveThresholdDays // ignore: cast_nullable_to_non_nullable
                  as int,
        churnRiskThresholdDays: null == churnRiskThresholdDays
            ? _value.churnRiskThresholdDays
            : churnRiskThresholdDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingConfigImpl implements _PricingConfig {
  const _$PricingConfigImpl({
    required this.basePrice,
    required final Map<UserSegment, int> segmentPrices,
    final List<SeasonalOffer> seasonalOffers = const [],
    this.vipThresholdMinutes = 1000,
    this.inactiveThresholdDays = 7,
    this.churnRiskThresholdDays = 30,
  }) : _segmentPrices = segmentPrices,
       _seasonalOffers = seasonalOffers;

  factory _$PricingConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingConfigImplFromJson(json);

  @override
  final int basePrice;
  // ¥120
  final Map<UserSegment, int> _segmentPrices;
  // ¥120
  @override
  Map<UserSegment, int> get segmentPrices {
    if (_segmentPrices is EqualUnmodifiableMapView) return _segmentPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_segmentPrices);
  }

  final List<SeasonalOffer> _seasonalOffers;
  @override
  @JsonKey()
  List<SeasonalOffer> get seasonalOffers {
    if (_seasonalOffers is EqualUnmodifiableListView) return _seasonalOffers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasonalOffers);
  }

  @override
  @JsonKey()
  final int vipThresholdMinutes;
  // VIP判定: 1000分
  @override
  @JsonKey()
  final int inactiveThresholdDays;
  // 非アクティブ: 7日
  @override
  @JsonKey()
  final int churnRiskThresholdDays;

  @override
  String toString() {
    return 'PricingConfig(basePrice: $basePrice, segmentPrices: $segmentPrices, seasonalOffers: $seasonalOffers, vipThresholdMinutes: $vipThresholdMinutes, inactiveThresholdDays: $inactiveThresholdDays, churnRiskThresholdDays: $churnRiskThresholdDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingConfigImpl &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            const DeepCollectionEquality().equals(
              other._segmentPrices,
              _segmentPrices,
            ) &&
            const DeepCollectionEquality().equals(
              other._seasonalOffers,
              _seasonalOffers,
            ) &&
            (identical(other.vipThresholdMinutes, vipThresholdMinutes) ||
                other.vipThresholdMinutes == vipThresholdMinutes) &&
            (identical(other.inactiveThresholdDays, inactiveThresholdDays) ||
                other.inactiveThresholdDays == inactiveThresholdDays) &&
            (identical(other.churnRiskThresholdDays, churnRiskThresholdDays) ||
                other.churnRiskThresholdDays == churnRiskThresholdDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    basePrice,
    const DeepCollectionEquality().hash(_segmentPrices),
    const DeepCollectionEquality().hash(_seasonalOffers),
    vipThresholdMinutes,
    inactiveThresholdDays,
    churnRiskThresholdDays,
  );

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingConfigImplCopyWith<_$PricingConfigImpl> get copyWith =>
      __$$PricingConfigImplCopyWithImpl<_$PricingConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingConfigImplToJson(this);
  }
}

abstract class _PricingConfig implements PricingConfig {
  const factory _PricingConfig({
    required final int basePrice,
    required final Map<UserSegment, int> segmentPrices,
    final List<SeasonalOffer> seasonalOffers,
    final int vipThresholdMinutes,
    final int inactiveThresholdDays,
    final int churnRiskThresholdDays,
  }) = _$PricingConfigImpl;

  factory _PricingConfig.fromJson(Map<String, dynamic> json) =
      _$PricingConfigImpl.fromJson;

  @override
  int get basePrice; // ¥120
  @override
  Map<UserSegment, int> get segmentPrices;
  @override
  List<SeasonalOffer> get seasonalOffers;
  @override
  int get vipThresholdMinutes; // VIP判定: 1000分
  @override
  int get inactiveThresholdDays; // 非アクティブ: 7日
  @override
  int get churnRiskThresholdDays;

  /// Create a copy of PricingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingConfigImplCopyWith<_$PricingConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingAnalyticsEvent _$PricingAnalyticsEventFromJson(
  Map<String, dynamic> json,
) {
  return _PricingAnalyticsEvent.fromJson(json);
}

/// @nodoc
mixin _$PricingAnalyticsEvent {
  String get userId => throw _privateConstructorUsedError;
  String get eventType =>
      throw _privateConstructorUsedError; // 'impression' or 'conversion'
  UserSegment get segment => throw _privateConstructorUsedError;
  int get displayPrice => throw _privateConstructorUsedError;
  String get discountReason => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this PricingAnalyticsEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingAnalyticsEventCopyWith<PricingAnalyticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingAnalyticsEventCopyWith<$Res> {
  factory $PricingAnalyticsEventCopyWith(
    PricingAnalyticsEvent value,
    $Res Function(PricingAnalyticsEvent) then,
  ) = _$PricingAnalyticsEventCopyWithImpl<$Res, PricingAnalyticsEvent>;
  @useResult
  $Res call({
    String userId,
    String eventType,
    UserSegment segment,
    int displayPrice,
    String discountReason,
    DateTime timestamp,
  });
}

/// @nodoc
class _$PricingAnalyticsEventCopyWithImpl<
  $Res,
  $Val extends PricingAnalyticsEvent
>
    implements $PricingAnalyticsEventCopyWith<$Res> {
  _$PricingAnalyticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? eventType = null,
    Object? segment = null,
    Object? displayPrice = null,
    Object? discountReason = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            eventType: null == eventType
                ? _value.eventType
                : eventType // ignore: cast_nullable_to_non_nullable
                      as String,
            segment: null == segment
                ? _value.segment
                : segment // ignore: cast_nullable_to_non_nullable
                      as UserSegment,
            displayPrice: null == displayPrice
                ? _value.displayPrice
                : displayPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            discountReason: null == discountReason
                ? _value.discountReason
                : discountReason // ignore: cast_nullable_to_non_nullable
                      as String,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PricingAnalyticsEventImplCopyWith<$Res>
    implements $PricingAnalyticsEventCopyWith<$Res> {
  factory _$$PricingAnalyticsEventImplCopyWith(
    _$PricingAnalyticsEventImpl value,
    $Res Function(_$PricingAnalyticsEventImpl) then,
  ) = __$$PricingAnalyticsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String eventType,
    UserSegment segment,
    int displayPrice,
    String discountReason,
    DateTime timestamp,
  });
}

/// @nodoc
class __$$PricingAnalyticsEventImplCopyWithImpl<$Res>
    extends
        _$PricingAnalyticsEventCopyWithImpl<$Res, _$PricingAnalyticsEventImpl>
    implements _$$PricingAnalyticsEventImplCopyWith<$Res> {
  __$$PricingAnalyticsEventImplCopyWithImpl(
    _$PricingAnalyticsEventImpl _value,
    $Res Function(_$PricingAnalyticsEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? eventType = null,
    Object? segment = null,
    Object? displayPrice = null,
    Object? discountReason = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$PricingAnalyticsEventImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        eventType: null == eventType
            ? _value.eventType
            : eventType // ignore: cast_nullable_to_non_nullable
                  as String,
        segment: null == segment
            ? _value.segment
            : segment // ignore: cast_nullable_to_non_nullable
                  as UserSegment,
        displayPrice: null == displayPrice
            ? _value.displayPrice
            : displayPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        discountReason: null == discountReason
            ? _value.discountReason
            : discountReason // ignore: cast_nullable_to_non_nullable
                  as String,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingAnalyticsEventImpl implements _PricingAnalyticsEvent {
  const _$PricingAnalyticsEventImpl({
    required this.userId,
    required this.eventType,
    required this.segment,
    required this.displayPrice,
    required this.discountReason,
    required this.timestamp,
  });

  factory _$PricingAnalyticsEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingAnalyticsEventImplFromJson(json);

  @override
  final String userId;
  @override
  final String eventType;
  // 'impression' or 'conversion'
  @override
  final UserSegment segment;
  @override
  final int displayPrice;
  @override
  final String discountReason;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'PricingAnalyticsEvent(userId: $userId, eventType: $eventType, segment: $segment, displayPrice: $displayPrice, discountReason: $discountReason, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingAnalyticsEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.segment, segment) || other.segment == segment) &&
            (identical(other.displayPrice, displayPrice) ||
                other.displayPrice == displayPrice) &&
            (identical(other.discountReason, discountReason) ||
                other.discountReason == discountReason) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    eventType,
    segment,
    displayPrice,
    discountReason,
    timestamp,
  );

  /// Create a copy of PricingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingAnalyticsEventImplCopyWith<_$PricingAnalyticsEventImpl>
  get copyWith =>
      __$$PricingAnalyticsEventImplCopyWithImpl<_$PricingAnalyticsEventImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingAnalyticsEventImplToJson(this);
  }
}

abstract class _PricingAnalyticsEvent implements PricingAnalyticsEvent {
  const factory _PricingAnalyticsEvent({
    required final String userId,
    required final String eventType,
    required final UserSegment segment,
    required final int displayPrice,
    required final String discountReason,
    required final DateTime timestamp,
  }) = _$PricingAnalyticsEventImpl;

  factory _PricingAnalyticsEvent.fromJson(Map<String, dynamic> json) =
      _$PricingAnalyticsEventImpl.fromJson;

  @override
  String get userId;
  @override
  String get eventType; // 'impression' or 'conversion'
  @override
  UserSegment get segment;
  @override
  int get displayPrice;
  @override
  String get discountReason;
  @override
  DateTime get timestamp;

  /// Create a copy of PricingAnalyticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingAnalyticsEventImplCopyWith<_$PricingAnalyticsEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
