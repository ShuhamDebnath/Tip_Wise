// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tip_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TipInput {
  double get billAmount => throw _privateConstructorUsedError;
  double get tipPercentage => throw _privateConstructorUsedError;
  int get numberOfPeople => throw _privateConstructorUsedError;

  /// Create a copy of TipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TipInputCopyWith<TipInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipInputCopyWith<$Res> {
  factory $TipInputCopyWith(TipInput value, $Res Function(TipInput) then) =
      _$TipInputCopyWithImpl<$Res, TipInput>;
  @useResult
  $Res call({double billAmount, double tipPercentage, int numberOfPeople});
}

/// @nodoc
class _$TipInputCopyWithImpl<$Res, $Val extends TipInput>
    implements $TipInputCopyWith<$Res> {
  _$TipInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmount = null,
    Object? tipPercentage = null,
    Object? numberOfPeople = null,
  }) {
    return _then(
      _value.copyWith(
            billAmount: null == billAmount
                ? _value.billAmount
                : billAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            tipPercentage: null == tipPercentage
                ? _value.tipPercentage
                : tipPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            numberOfPeople: null == numberOfPeople
                ? _value.numberOfPeople
                : numberOfPeople // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TipInputImplCopyWith<$Res>
    implements $TipInputCopyWith<$Res> {
  factory _$$TipInputImplCopyWith(
    _$TipInputImpl value,
    $Res Function(_$TipInputImpl) then,
  ) = __$$TipInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double billAmount, double tipPercentage, int numberOfPeople});
}

/// @nodoc
class __$$TipInputImplCopyWithImpl<$Res>
    extends _$TipInputCopyWithImpl<$Res, _$TipInputImpl>
    implements _$$TipInputImplCopyWith<$Res> {
  __$$TipInputImplCopyWithImpl(
    _$TipInputImpl _value,
    $Res Function(_$TipInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TipInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmount = null,
    Object? tipPercentage = null,
    Object? numberOfPeople = null,
  }) {
    return _then(
      _$TipInputImpl(
        billAmount: null == billAmount
            ? _value.billAmount
            : billAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        tipPercentage: null == tipPercentage
            ? _value.tipPercentage
            : tipPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        numberOfPeople: null == numberOfPeople
            ? _value.numberOfPeople
            : numberOfPeople // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TipInputImpl implements _TipInput {
  const _$TipInputImpl({
    required this.billAmount,
    required this.tipPercentage,
    required this.numberOfPeople,
  });

  @override
  final double billAmount;
  @override
  final double tipPercentage;
  @override
  final int numberOfPeople;

  @override
  String toString() {
    return 'TipInput(billAmount: $billAmount, tipPercentage: $tipPercentage, numberOfPeople: $numberOfPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipInputImpl &&
            (identical(other.billAmount, billAmount) ||
                other.billAmount == billAmount) &&
            (identical(other.tipPercentage, tipPercentage) ||
                other.tipPercentage == tipPercentage) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, billAmount, tipPercentage, numberOfPeople);

  /// Create a copy of TipInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TipInputImplCopyWith<_$TipInputImpl> get copyWith =>
      __$$TipInputImplCopyWithImpl<_$TipInputImpl>(this, _$identity);
}

abstract class _TipInput implements TipInput {
  const factory _TipInput({
    required final double billAmount,
    required final double tipPercentage,
    required final int numberOfPeople,
  }) = _$TipInputImpl;

  @override
  double get billAmount;
  @override
  double get tipPercentage;
  @override
  int get numberOfPeople;

  /// Create a copy of TipInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TipInputImplCopyWith<_$TipInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
