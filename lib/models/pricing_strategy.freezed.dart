// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricingTier {

 UserSegment get segment; int get basePrice;// 基本価格（¥）
 double get discountPercent;// 割引率（%）
 String get label;// 表示テキスト
 String? get description;// 説明（オプション）
 List<String> get bonusFeatures;
/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingTierCopyWith<PricingTier> get copyWith => _$PricingTierCopyWithImpl<PricingTier>(this as PricingTier, _$identity);

  /// Serializes this PricingTier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingTier&&(identical(other.segment, segment) || other.segment == segment)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.bonusFeatures, bonusFeatures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segment,basePrice,discountPercent,label,description,const DeepCollectionEquality().hash(bonusFeatures));

@override
String toString() {
  return 'PricingTier(segment: $segment, basePrice: $basePrice, discountPercent: $discountPercent, label: $label, description: $description, bonusFeatures: $bonusFeatures)';
}


}

/// @nodoc
abstract mixin class $PricingTierCopyWith<$Res>  {
  factory $PricingTierCopyWith(PricingTier value, $Res Function(PricingTier) _then) = _$PricingTierCopyWithImpl;
@useResult
$Res call({
 UserSegment segment, int basePrice, double discountPercent, String label, String? description, List<String> bonusFeatures
});




}
/// @nodoc
class _$PricingTierCopyWithImpl<$Res>
    implements $PricingTierCopyWith<$Res> {
  _$PricingTierCopyWithImpl(this._self, this._then);

  final PricingTier _self;
  final $Res Function(PricingTier) _then;

/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? segment = null,Object? basePrice = null,Object? discountPercent = null,Object? label = null,Object? description = freezed,Object? bonusFeatures = null,}) {
  return _then(_self.copyWith(
segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as UserSegment,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as double,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bonusFeatures: null == bonusFeatures ? _self.bonusFeatures : bonusFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingTier].
extension PricingTierPatterns on PricingTier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingTier value)  $default,){
final _that = this;
switch (_that) {
case _PricingTier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingTier value)?  $default,){
final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserSegment segment,  int basePrice,  double discountPercent,  String label,  String? description,  List<String> bonusFeatures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
return $default(_that.segment,_that.basePrice,_that.discountPercent,_that.label,_that.description,_that.bonusFeatures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserSegment segment,  int basePrice,  double discountPercent,  String label,  String? description,  List<String> bonusFeatures)  $default,) {final _that = this;
switch (_that) {
case _PricingTier():
return $default(_that.segment,_that.basePrice,_that.discountPercent,_that.label,_that.description,_that.bonusFeatures);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserSegment segment,  int basePrice,  double discountPercent,  String label,  String? description,  List<String> bonusFeatures)?  $default,) {final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
return $default(_that.segment,_that.basePrice,_that.discountPercent,_that.label,_that.description,_that.bonusFeatures);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingTier implements PricingTier {
  const _PricingTier({required this.segment, required this.basePrice, required this.discountPercent, required this.label, this.description, final  List<String> bonusFeatures = const []}): _bonusFeatures = bonusFeatures;
  factory _PricingTier.fromJson(Map<String, dynamic> json) => _$PricingTierFromJson(json);

@override final  UserSegment segment;
@override final  int basePrice;
// 基本価格（¥）
@override final  double discountPercent;
// 割引率（%）
@override final  String label;
// 表示テキスト
@override final  String? description;
// 説明（オプション）
 final  List<String> _bonusFeatures;
// 説明（オプション）
@override@JsonKey() List<String> get bonusFeatures {
  if (_bonusFeatures is EqualUnmodifiableListView) return _bonusFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonusFeatures);
}


/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingTierCopyWith<_PricingTier> get copyWith => __$PricingTierCopyWithImpl<_PricingTier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingTierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingTier&&(identical(other.segment, segment) || other.segment == segment)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.discountPercent, discountPercent) || other.discountPercent == discountPercent)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._bonusFeatures, _bonusFeatures));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,segment,basePrice,discountPercent,label,description,const DeepCollectionEquality().hash(_bonusFeatures));

@override
String toString() {
  return 'PricingTier(segment: $segment, basePrice: $basePrice, discountPercent: $discountPercent, label: $label, description: $description, bonusFeatures: $bonusFeatures)';
}


}

/// @nodoc
abstract mixin class _$PricingTierCopyWith<$Res> implements $PricingTierCopyWith<$Res> {
  factory _$PricingTierCopyWith(_PricingTier value, $Res Function(_PricingTier) _then) = __$PricingTierCopyWithImpl;
@override @useResult
$Res call({
 UserSegment segment, int basePrice, double discountPercent, String label, String? description, List<String> bonusFeatures
});




}
/// @nodoc
class __$PricingTierCopyWithImpl<$Res>
    implements _$PricingTierCopyWith<$Res> {
  __$PricingTierCopyWithImpl(this._self, this._then);

  final _PricingTier _self;
  final $Res Function(_PricingTier) _then;

/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? segment = null,Object? basePrice = null,Object? discountPercent = null,Object? label = null,Object? description = freezed,Object? bonusFeatures = null,}) {
  return _then(_PricingTier(
segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as UserSegment,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,discountPercent: null == discountPercent ? _self.discountPercent : discountPercent // ignore: cast_nullable_to_non_nullable
as double,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,bonusFeatures: null == bonusFeatures ? _self._bonusFeatures : bonusFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DynamicPrice {

 String get userId; UserSegment get detectedSegment; int get displayPrice;// 表示価格
 int get basePrice;// 通常価格（¥120）
 double get appliedDiscount;// 適用割引率
 String get discountReason;// 割引理由（表示用）
 DateTime get validUntil;// オファー有効期限
 bool get isLimited;
/// Create a copy of DynamicPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicPriceCopyWith<DynamicPrice> get copyWith => _$DynamicPriceCopyWithImpl<DynamicPrice>(this as DynamicPrice, _$identity);

  /// Serializes this DynamicPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicPrice&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.detectedSegment, detectedSegment) || other.detectedSegment == detectedSegment)&&(identical(other.displayPrice, displayPrice) || other.displayPrice == displayPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.appliedDiscount, appliedDiscount) || other.appliedDiscount == appliedDiscount)&&(identical(other.discountReason, discountReason) || other.discountReason == discountReason)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.isLimited, isLimited) || other.isLimited == isLimited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,detectedSegment,displayPrice,basePrice,appliedDiscount,discountReason,validUntil,isLimited);

@override
String toString() {
  return 'DynamicPrice(userId: $userId, detectedSegment: $detectedSegment, displayPrice: $displayPrice, basePrice: $basePrice, appliedDiscount: $appliedDiscount, discountReason: $discountReason, validUntil: $validUntil, isLimited: $isLimited)';
}


}

/// @nodoc
abstract mixin class $DynamicPriceCopyWith<$Res>  {
  factory $DynamicPriceCopyWith(DynamicPrice value, $Res Function(DynamicPrice) _then) = _$DynamicPriceCopyWithImpl;
@useResult
$Res call({
 String userId, UserSegment detectedSegment, int displayPrice, int basePrice, double appliedDiscount, String discountReason, DateTime validUntil, bool isLimited
});




}
/// @nodoc
class _$DynamicPriceCopyWithImpl<$Res>
    implements $DynamicPriceCopyWith<$Res> {
  _$DynamicPriceCopyWithImpl(this._self, this._then);

  final DynamicPrice _self;
  final $Res Function(DynamicPrice) _then;

/// Create a copy of DynamicPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? detectedSegment = null,Object? displayPrice = null,Object? basePrice = null,Object? appliedDiscount = null,Object? discountReason = null,Object? validUntil = null,Object? isLimited = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,detectedSegment: null == detectedSegment ? _self.detectedSegment : detectedSegment // ignore: cast_nullable_to_non_nullable
as UserSegment,displayPrice: null == displayPrice ? _self.displayPrice : displayPrice // ignore: cast_nullable_to_non_nullable
as int,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,appliedDiscount: null == appliedDiscount ? _self.appliedDiscount : appliedDiscount // ignore: cast_nullable_to_non_nullable
as double,discountReason: null == discountReason ? _self.discountReason : discountReason // ignore: cast_nullable_to_non_nullable
as String,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,isLimited: null == isLimited ? _self.isLimited : isLimited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DynamicPrice].
extension DynamicPricePatterns on DynamicPrice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicPrice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicPrice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicPrice value)  $default,){
final _that = this;
switch (_that) {
case _DynamicPrice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicPrice value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicPrice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  UserSegment detectedSegment,  int displayPrice,  int basePrice,  double appliedDiscount,  String discountReason,  DateTime validUntil,  bool isLimited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicPrice() when $default != null:
return $default(_that.userId,_that.detectedSegment,_that.displayPrice,_that.basePrice,_that.appliedDiscount,_that.discountReason,_that.validUntil,_that.isLimited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  UserSegment detectedSegment,  int displayPrice,  int basePrice,  double appliedDiscount,  String discountReason,  DateTime validUntil,  bool isLimited)  $default,) {final _that = this;
switch (_that) {
case _DynamicPrice():
return $default(_that.userId,_that.detectedSegment,_that.displayPrice,_that.basePrice,_that.appliedDiscount,_that.discountReason,_that.validUntil,_that.isLimited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  UserSegment detectedSegment,  int displayPrice,  int basePrice,  double appliedDiscount,  String discountReason,  DateTime validUntil,  bool isLimited)?  $default,) {final _that = this;
switch (_that) {
case _DynamicPrice() when $default != null:
return $default(_that.userId,_that.detectedSegment,_that.displayPrice,_that.basePrice,_that.appliedDiscount,_that.discountReason,_that.validUntil,_that.isLimited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicPrice implements DynamicPrice {
  const _DynamicPrice({required this.userId, required this.detectedSegment, required this.displayPrice, required this.basePrice, required this.appliedDiscount, required this.discountReason, required this.validUntil, required this.isLimited});
  factory _DynamicPrice.fromJson(Map<String, dynamic> json) => _$DynamicPriceFromJson(json);

@override final  String userId;
@override final  UserSegment detectedSegment;
@override final  int displayPrice;
// 表示価格
@override final  int basePrice;
// 通常価格（¥120）
@override final  double appliedDiscount;
// 適用割引率
@override final  String discountReason;
// 割引理由（表示用）
@override final  DateTime validUntil;
// オファー有効期限
@override final  bool isLimited;

/// Create a copy of DynamicPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicPriceCopyWith<_DynamicPrice> get copyWith => __$DynamicPriceCopyWithImpl<_DynamicPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicPrice&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.detectedSegment, detectedSegment) || other.detectedSegment == detectedSegment)&&(identical(other.displayPrice, displayPrice) || other.displayPrice == displayPrice)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.appliedDiscount, appliedDiscount) || other.appliedDiscount == appliedDiscount)&&(identical(other.discountReason, discountReason) || other.discountReason == discountReason)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.isLimited, isLimited) || other.isLimited == isLimited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,detectedSegment,displayPrice,basePrice,appliedDiscount,discountReason,validUntil,isLimited);

@override
String toString() {
  return 'DynamicPrice(userId: $userId, detectedSegment: $detectedSegment, displayPrice: $displayPrice, basePrice: $basePrice, appliedDiscount: $appliedDiscount, discountReason: $discountReason, validUntil: $validUntil, isLimited: $isLimited)';
}


}

/// @nodoc
abstract mixin class _$DynamicPriceCopyWith<$Res> implements $DynamicPriceCopyWith<$Res> {
  factory _$DynamicPriceCopyWith(_DynamicPrice value, $Res Function(_DynamicPrice) _then) = __$DynamicPriceCopyWithImpl;
@override @useResult
$Res call({
 String userId, UserSegment detectedSegment, int displayPrice, int basePrice, double appliedDiscount, String discountReason, DateTime validUntil, bool isLimited
});




}
/// @nodoc
class __$DynamicPriceCopyWithImpl<$Res>
    implements _$DynamicPriceCopyWith<$Res> {
  __$DynamicPriceCopyWithImpl(this._self, this._then);

  final _DynamicPrice _self;
  final $Res Function(_DynamicPrice) _then;

/// Create a copy of DynamicPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? detectedSegment = null,Object? displayPrice = null,Object? basePrice = null,Object? appliedDiscount = null,Object? discountReason = null,Object? validUntil = null,Object? isLimited = null,}) {
  return _then(_DynamicPrice(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,detectedSegment: null == detectedSegment ? _self.detectedSegment : detectedSegment // ignore: cast_nullable_to_non_nullable
as UserSegment,displayPrice: null == displayPrice ? _self.displayPrice : displayPrice // ignore: cast_nullable_to_non_nullable
as int,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,appliedDiscount: null == appliedDiscount ? _self.appliedDiscount : appliedDiscount // ignore: cast_nullable_to_non_nullable
as double,discountReason: null == discountReason ? _self.discountReason : discountReason // ignore: cast_nullable_to_non_nullable
as String,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,isLimited: null == isLimited ? _self.isLimited : isLimited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SeasonalOffer {

 String get name; DateTime get startDate; DateTime get endDate; int get offerPrice; String get description; bool get isActive;
/// Create a copy of SeasonalOffer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonalOfferCopyWith<SeasonalOffer> get copyWith => _$SeasonalOfferCopyWithImpl<SeasonalOffer>(this as SeasonalOffer, _$identity);

  /// Serializes this SeasonalOffer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeasonalOffer&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.offerPrice, offerPrice) || other.offerPrice == offerPrice)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,startDate,endDate,offerPrice,description,isActive);

@override
String toString() {
  return 'SeasonalOffer(name: $name, startDate: $startDate, endDate: $endDate, offerPrice: $offerPrice, description: $description, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $SeasonalOfferCopyWith<$Res>  {
  factory $SeasonalOfferCopyWith(SeasonalOffer value, $Res Function(SeasonalOffer) _then) = _$SeasonalOfferCopyWithImpl;
@useResult
$Res call({
 String name, DateTime startDate, DateTime endDate, int offerPrice, String description, bool isActive
});




}
/// @nodoc
class _$SeasonalOfferCopyWithImpl<$Res>
    implements $SeasonalOfferCopyWith<$Res> {
  _$SeasonalOfferCopyWithImpl(this._self, this._then);

  final SeasonalOffer _self;
  final $Res Function(SeasonalOffer) _then;

/// Create a copy of SeasonalOffer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? startDate = null,Object? endDate = null,Object? offerPrice = null,Object? description = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,offerPrice: null == offerPrice ? _self.offerPrice : offerPrice // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SeasonalOffer].
extension SeasonalOfferPatterns on SeasonalOffer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeasonalOffer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeasonalOffer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeasonalOffer value)  $default,){
final _that = this;
switch (_that) {
case _SeasonalOffer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeasonalOffer value)?  $default,){
final _that = this;
switch (_that) {
case _SeasonalOffer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  DateTime startDate,  DateTime endDate,  int offerPrice,  String description,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeasonalOffer() when $default != null:
return $default(_that.name,_that.startDate,_that.endDate,_that.offerPrice,_that.description,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  DateTime startDate,  DateTime endDate,  int offerPrice,  String description,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _SeasonalOffer():
return $default(_that.name,_that.startDate,_that.endDate,_that.offerPrice,_that.description,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  DateTime startDate,  DateTime endDate,  int offerPrice,  String description,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _SeasonalOffer() when $default != null:
return $default(_that.name,_that.startDate,_that.endDate,_that.offerPrice,_that.description,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeasonalOffer implements SeasonalOffer {
  const _SeasonalOffer({required this.name, required this.startDate, required this.endDate, required this.offerPrice, required this.description, required this.isActive});
  factory _SeasonalOffer.fromJson(Map<String, dynamic> json) => _$SeasonalOfferFromJson(json);

@override final  String name;
@override final  DateTime startDate;
@override final  DateTime endDate;
@override final  int offerPrice;
@override final  String description;
@override final  bool isActive;

/// Create a copy of SeasonalOffer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonalOfferCopyWith<_SeasonalOffer> get copyWith => __$SeasonalOfferCopyWithImpl<_SeasonalOffer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonalOfferToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeasonalOffer&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.offerPrice, offerPrice) || other.offerPrice == offerPrice)&&(identical(other.description, description) || other.description == description)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,startDate,endDate,offerPrice,description,isActive);

@override
String toString() {
  return 'SeasonalOffer(name: $name, startDate: $startDate, endDate: $endDate, offerPrice: $offerPrice, description: $description, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$SeasonalOfferCopyWith<$Res> implements $SeasonalOfferCopyWith<$Res> {
  factory _$SeasonalOfferCopyWith(_SeasonalOffer value, $Res Function(_SeasonalOffer) _then) = __$SeasonalOfferCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime startDate, DateTime endDate, int offerPrice, String description, bool isActive
});




}
/// @nodoc
class __$SeasonalOfferCopyWithImpl<$Res>
    implements _$SeasonalOfferCopyWith<$Res> {
  __$SeasonalOfferCopyWithImpl(this._self, this._then);

  final _SeasonalOffer _self;
  final $Res Function(_SeasonalOffer) _then;

/// Create a copy of SeasonalOffer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? startDate = null,Object? endDate = null,Object? offerPrice = null,Object? description = null,Object? isActive = null,}) {
  return _then(_SeasonalOffer(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,offerPrice: null == offerPrice ? _self.offerPrice : offerPrice // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PricingConfig {

 int get basePrice;// ¥120
 Map<UserSegment, int> get segmentPrices; List<SeasonalOffer> get seasonalOffers; int get vipThresholdMinutes;// VIP判定: 1000分
 int get inactiveThresholdDays;// 非アクティブ: 7日
 int get churnRiskThresholdDays;
/// Create a copy of PricingConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingConfigCopyWith<PricingConfig> get copyWith => _$PricingConfigCopyWithImpl<PricingConfig>(this as PricingConfig, _$identity);

  /// Serializes this PricingConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingConfig&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&const DeepCollectionEquality().equals(other.segmentPrices, segmentPrices)&&const DeepCollectionEquality().equals(other.seasonalOffers, seasonalOffers)&&(identical(other.vipThresholdMinutes, vipThresholdMinutes) || other.vipThresholdMinutes == vipThresholdMinutes)&&(identical(other.inactiveThresholdDays, inactiveThresholdDays) || other.inactiveThresholdDays == inactiveThresholdDays)&&(identical(other.churnRiskThresholdDays, churnRiskThresholdDays) || other.churnRiskThresholdDays == churnRiskThresholdDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,basePrice,const DeepCollectionEquality().hash(segmentPrices),const DeepCollectionEquality().hash(seasonalOffers),vipThresholdMinutes,inactiveThresholdDays,churnRiskThresholdDays);

@override
String toString() {
  return 'PricingConfig(basePrice: $basePrice, segmentPrices: $segmentPrices, seasonalOffers: $seasonalOffers, vipThresholdMinutes: $vipThresholdMinutes, inactiveThresholdDays: $inactiveThresholdDays, churnRiskThresholdDays: $churnRiskThresholdDays)';
}


}

/// @nodoc
abstract mixin class $PricingConfigCopyWith<$Res>  {
  factory $PricingConfigCopyWith(PricingConfig value, $Res Function(PricingConfig) _then) = _$PricingConfigCopyWithImpl;
@useResult
$Res call({
 int basePrice, Map<UserSegment, int> segmentPrices, List<SeasonalOffer> seasonalOffers, int vipThresholdMinutes, int inactiveThresholdDays, int churnRiskThresholdDays
});




}
/// @nodoc
class _$PricingConfigCopyWithImpl<$Res>
    implements $PricingConfigCopyWith<$Res> {
  _$PricingConfigCopyWithImpl(this._self, this._then);

  final PricingConfig _self;
  final $Res Function(PricingConfig) _then;

/// Create a copy of PricingConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? basePrice = null,Object? segmentPrices = null,Object? seasonalOffers = null,Object? vipThresholdMinutes = null,Object? inactiveThresholdDays = null,Object? churnRiskThresholdDays = null,}) {
  return _then(_self.copyWith(
basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,segmentPrices: null == segmentPrices ? _self.segmentPrices : segmentPrices // ignore: cast_nullable_to_non_nullable
as Map<UserSegment, int>,seasonalOffers: null == seasonalOffers ? _self.seasonalOffers : seasonalOffers // ignore: cast_nullable_to_non_nullable
as List<SeasonalOffer>,vipThresholdMinutes: null == vipThresholdMinutes ? _self.vipThresholdMinutes : vipThresholdMinutes // ignore: cast_nullable_to_non_nullable
as int,inactiveThresholdDays: null == inactiveThresholdDays ? _self.inactiveThresholdDays : inactiveThresholdDays // ignore: cast_nullable_to_non_nullable
as int,churnRiskThresholdDays: null == churnRiskThresholdDays ? _self.churnRiskThresholdDays : churnRiskThresholdDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingConfig].
extension PricingConfigPatterns on PricingConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingConfig value)  $default,){
final _that = this;
switch (_that) {
case _PricingConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingConfig value)?  $default,){
final _that = this;
switch (_that) {
case _PricingConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int basePrice,  Map<UserSegment, int> segmentPrices,  List<SeasonalOffer> seasonalOffers,  int vipThresholdMinutes,  int inactiveThresholdDays,  int churnRiskThresholdDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingConfig() when $default != null:
return $default(_that.basePrice,_that.segmentPrices,_that.seasonalOffers,_that.vipThresholdMinutes,_that.inactiveThresholdDays,_that.churnRiskThresholdDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int basePrice,  Map<UserSegment, int> segmentPrices,  List<SeasonalOffer> seasonalOffers,  int vipThresholdMinutes,  int inactiveThresholdDays,  int churnRiskThresholdDays)  $default,) {final _that = this;
switch (_that) {
case _PricingConfig():
return $default(_that.basePrice,_that.segmentPrices,_that.seasonalOffers,_that.vipThresholdMinutes,_that.inactiveThresholdDays,_that.churnRiskThresholdDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int basePrice,  Map<UserSegment, int> segmentPrices,  List<SeasonalOffer> seasonalOffers,  int vipThresholdMinutes,  int inactiveThresholdDays,  int churnRiskThresholdDays)?  $default,) {final _that = this;
switch (_that) {
case _PricingConfig() when $default != null:
return $default(_that.basePrice,_that.segmentPrices,_that.seasonalOffers,_that.vipThresholdMinutes,_that.inactiveThresholdDays,_that.churnRiskThresholdDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingConfig implements PricingConfig {
  const _PricingConfig({required this.basePrice, required final  Map<UserSegment, int> segmentPrices, final  List<SeasonalOffer> seasonalOffers = const [], this.vipThresholdMinutes = 1000, this.inactiveThresholdDays = 7, this.churnRiskThresholdDays = 30}): _segmentPrices = segmentPrices,_seasonalOffers = seasonalOffers;
  factory _PricingConfig.fromJson(Map<String, dynamic> json) => _$PricingConfigFromJson(json);

@override final  int basePrice;
// ¥120
 final  Map<UserSegment, int> _segmentPrices;
// ¥120
@override Map<UserSegment, int> get segmentPrices {
  if (_segmentPrices is EqualUnmodifiableMapView) return _segmentPrices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_segmentPrices);
}

 final  List<SeasonalOffer> _seasonalOffers;
@override@JsonKey() List<SeasonalOffer> get seasonalOffers {
  if (_seasonalOffers is EqualUnmodifiableListView) return _seasonalOffers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seasonalOffers);
}

@override@JsonKey() final  int vipThresholdMinutes;
// VIP判定: 1000分
@override@JsonKey() final  int inactiveThresholdDays;
// 非アクティブ: 7日
@override@JsonKey() final  int churnRiskThresholdDays;

/// Create a copy of PricingConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingConfigCopyWith<_PricingConfig> get copyWith => __$PricingConfigCopyWithImpl<_PricingConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingConfig&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&const DeepCollectionEquality().equals(other._segmentPrices, _segmentPrices)&&const DeepCollectionEquality().equals(other._seasonalOffers, _seasonalOffers)&&(identical(other.vipThresholdMinutes, vipThresholdMinutes) || other.vipThresholdMinutes == vipThresholdMinutes)&&(identical(other.inactiveThresholdDays, inactiveThresholdDays) || other.inactiveThresholdDays == inactiveThresholdDays)&&(identical(other.churnRiskThresholdDays, churnRiskThresholdDays) || other.churnRiskThresholdDays == churnRiskThresholdDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,basePrice,const DeepCollectionEquality().hash(_segmentPrices),const DeepCollectionEquality().hash(_seasonalOffers),vipThresholdMinutes,inactiveThresholdDays,churnRiskThresholdDays);

@override
String toString() {
  return 'PricingConfig(basePrice: $basePrice, segmentPrices: $segmentPrices, seasonalOffers: $seasonalOffers, vipThresholdMinutes: $vipThresholdMinutes, inactiveThresholdDays: $inactiveThresholdDays, churnRiskThresholdDays: $churnRiskThresholdDays)';
}


}

/// @nodoc
abstract mixin class _$PricingConfigCopyWith<$Res> implements $PricingConfigCopyWith<$Res> {
  factory _$PricingConfigCopyWith(_PricingConfig value, $Res Function(_PricingConfig) _then) = __$PricingConfigCopyWithImpl;
@override @useResult
$Res call({
 int basePrice, Map<UserSegment, int> segmentPrices, List<SeasonalOffer> seasonalOffers, int vipThresholdMinutes, int inactiveThresholdDays, int churnRiskThresholdDays
});




}
/// @nodoc
class __$PricingConfigCopyWithImpl<$Res>
    implements _$PricingConfigCopyWith<$Res> {
  __$PricingConfigCopyWithImpl(this._self, this._then);

  final _PricingConfig _self;
  final $Res Function(_PricingConfig) _then;

/// Create a copy of PricingConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? basePrice = null,Object? segmentPrices = null,Object? seasonalOffers = null,Object? vipThresholdMinutes = null,Object? inactiveThresholdDays = null,Object? churnRiskThresholdDays = null,}) {
  return _then(_PricingConfig(
basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,segmentPrices: null == segmentPrices ? _self._segmentPrices : segmentPrices // ignore: cast_nullable_to_non_nullable
as Map<UserSegment, int>,seasonalOffers: null == seasonalOffers ? _self._seasonalOffers : seasonalOffers // ignore: cast_nullable_to_non_nullable
as List<SeasonalOffer>,vipThresholdMinutes: null == vipThresholdMinutes ? _self.vipThresholdMinutes : vipThresholdMinutes // ignore: cast_nullable_to_non_nullable
as int,inactiveThresholdDays: null == inactiveThresholdDays ? _self.inactiveThresholdDays : inactiveThresholdDays // ignore: cast_nullable_to_non_nullable
as int,churnRiskThresholdDays: null == churnRiskThresholdDays ? _self.churnRiskThresholdDays : churnRiskThresholdDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PricingAnalyticsEvent {

 String get userId; String get eventType;// 'impression' or 'conversion'
 UserSegment get segment; int get displayPrice; String get discountReason; DateTime get timestamp;
/// Create a copy of PricingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingAnalyticsEventCopyWith<PricingAnalyticsEvent> get copyWith => _$PricingAnalyticsEventCopyWithImpl<PricingAnalyticsEvent>(this as PricingAnalyticsEvent, _$identity);

  /// Serializes this PricingAnalyticsEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingAnalyticsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.segment, segment) || other.segment == segment)&&(identical(other.displayPrice, displayPrice) || other.displayPrice == displayPrice)&&(identical(other.discountReason, discountReason) || other.discountReason == discountReason)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,eventType,segment,displayPrice,discountReason,timestamp);

@override
String toString() {
  return 'PricingAnalyticsEvent(userId: $userId, eventType: $eventType, segment: $segment, displayPrice: $displayPrice, discountReason: $discountReason, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $PricingAnalyticsEventCopyWith<$Res>  {
  factory $PricingAnalyticsEventCopyWith(PricingAnalyticsEvent value, $Res Function(PricingAnalyticsEvent) _then) = _$PricingAnalyticsEventCopyWithImpl;
@useResult
$Res call({
 String userId, String eventType, UserSegment segment, int displayPrice, String discountReason, DateTime timestamp
});




}
/// @nodoc
class _$PricingAnalyticsEventCopyWithImpl<$Res>
    implements $PricingAnalyticsEventCopyWith<$Res> {
  _$PricingAnalyticsEventCopyWithImpl(this._self, this._then);

  final PricingAnalyticsEvent _self;
  final $Res Function(PricingAnalyticsEvent) _then;

/// Create a copy of PricingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? eventType = null,Object? segment = null,Object? displayPrice = null,Object? discountReason = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as UserSegment,displayPrice: null == displayPrice ? _self.displayPrice : displayPrice // ignore: cast_nullable_to_non_nullable
as int,discountReason: null == discountReason ? _self.discountReason : discountReason // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingAnalyticsEvent].
extension PricingAnalyticsEventPatterns on PricingAnalyticsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingAnalyticsEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingAnalyticsEvent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingAnalyticsEvent value)  $default,){
final _that = this;
switch (_that) {
case _PricingAnalyticsEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingAnalyticsEvent value)?  $default,){
final _that = this;
switch (_that) {
case _PricingAnalyticsEvent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String eventType,  UserSegment segment,  int displayPrice,  String discountReason,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingAnalyticsEvent() when $default != null:
return $default(_that.userId,_that.eventType,_that.segment,_that.displayPrice,_that.discountReason,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String eventType,  UserSegment segment,  int displayPrice,  String discountReason,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _PricingAnalyticsEvent():
return $default(_that.userId,_that.eventType,_that.segment,_that.displayPrice,_that.discountReason,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String eventType,  UserSegment segment,  int displayPrice,  String discountReason,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _PricingAnalyticsEvent() when $default != null:
return $default(_that.userId,_that.eventType,_that.segment,_that.displayPrice,_that.discountReason,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingAnalyticsEvent implements PricingAnalyticsEvent {
  const _PricingAnalyticsEvent({required this.userId, required this.eventType, required this.segment, required this.displayPrice, required this.discountReason, required this.timestamp});
  factory _PricingAnalyticsEvent.fromJson(Map<String, dynamic> json) => _$PricingAnalyticsEventFromJson(json);

@override final  String userId;
@override final  String eventType;
// 'impression' or 'conversion'
@override final  UserSegment segment;
@override final  int displayPrice;
@override final  String discountReason;
@override final  DateTime timestamp;

/// Create a copy of PricingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingAnalyticsEventCopyWith<_PricingAnalyticsEvent> get copyWith => __$PricingAnalyticsEventCopyWithImpl<_PricingAnalyticsEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingAnalyticsEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingAnalyticsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.segment, segment) || other.segment == segment)&&(identical(other.displayPrice, displayPrice) || other.displayPrice == displayPrice)&&(identical(other.discountReason, discountReason) || other.discountReason == discountReason)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,eventType,segment,displayPrice,discountReason,timestamp);

@override
String toString() {
  return 'PricingAnalyticsEvent(userId: $userId, eventType: $eventType, segment: $segment, displayPrice: $displayPrice, discountReason: $discountReason, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$PricingAnalyticsEventCopyWith<$Res> implements $PricingAnalyticsEventCopyWith<$Res> {
  factory _$PricingAnalyticsEventCopyWith(_PricingAnalyticsEvent value, $Res Function(_PricingAnalyticsEvent) _then) = __$PricingAnalyticsEventCopyWithImpl;
@override @useResult
$Res call({
 String userId, String eventType, UserSegment segment, int displayPrice, String discountReason, DateTime timestamp
});




}
/// @nodoc
class __$PricingAnalyticsEventCopyWithImpl<$Res>
    implements _$PricingAnalyticsEventCopyWith<$Res> {
  __$PricingAnalyticsEventCopyWithImpl(this._self, this._then);

  final _PricingAnalyticsEvent _self;
  final $Res Function(_PricingAnalyticsEvent) _then;

/// Create a copy of PricingAnalyticsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? eventType = null,Object? segment = null,Object? displayPrice = null,Object? discountReason = null,Object? timestamp = null,}) {
  return _then(_PricingAnalyticsEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,segment: null == segment ? _self.segment : segment // ignore: cast_nullable_to_non_nullable
as UserSegment,displayPrice: null == displayPrice ? _self.displayPrice : displayPrice // ignore: cast_nullable_to_non_nullable
as int,discountReason: null == discountReason ? _self.discountReason : discountReason // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
