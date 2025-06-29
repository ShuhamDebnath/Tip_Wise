import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/tip_input.dart';

final billAmountProvider = StateProvider<double>((ref) => 0.0);
final tipPercentageProvider = StateProvider<double>((ref) => 0.15);
final numberOfPeopleProvider = StateProvider<int>((ref) => 1);

final tipInputProvider = Provider<TipInput>((ref) {
  return TipInput(
    billAmount: ref.watch(billAmountProvider),
    tipPercentage: ref.watch(tipPercentageProvider),
    numberOfPeople: ref.watch(numberOfPeopleProvider),
  );
});
