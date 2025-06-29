import '../models/tip_input.dart';

class TipService {
  static double calculateTipPerPerson(TipInput input) {
    final totalTip = input.billAmount * input.tipPercentage;
    return totalTip / input.numberOfPeople;
  }

  static double calculateTotalPerPerson(TipInput input) {
    final totalBill = input.billAmount + (input.billAmount * input.tipPercentage);
    return totalBill / input.numberOfPeople;
  }
}
