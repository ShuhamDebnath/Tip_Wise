import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_input.freezed.dart';

@freezed
class TipInput with _$TipInput {
  const factory TipInput({
    required double billAmount,
    required double tipPercentage,
    required int numberOfPeople,
  }) = _TipInput;
}
