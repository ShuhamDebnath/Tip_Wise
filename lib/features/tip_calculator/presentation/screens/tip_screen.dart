import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/providers.dart';
import 'package:tip_wise/core/utils/formatters.dart';
import '../widgets/input_field.dart';
import '../widgets/slider_tip.dart';
import '../widgets/people_selector.dart';
import '../widgets/result_card.dart';

class TipScreen extends HookConsumerWidget {
  const TipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final billAmountController = useTextEditingController();
    final tipInput = ref.watch(tipInputProvider);

    // Handle text input changes
    void onBillAmountChanged(String value) {
      // Remove any non-digit characters except decimal point
      String sanitized = value.replaceAll(RegExp(r'[^0-9\.]'), '');
      
      // Only allow one decimal point
      if (sanitized.split('.').length > 2) {
        sanitized = sanitized.substring(0, sanitized.length - 1);
      }
      
      // Update the controller with sanitized value
      billAmountController.value = TextEditingValue(
        text: sanitized,
        selection: TextSelection.collapsed(offset: sanitized.length),
      );
      
      // Update state with parsed value
      final amount = double.tryParse(sanitized) ?? 0.0;
      ref.read(billAmountProvider.notifier).state = amount;
    }
    
    // Format the bill amount when user finishes editing
    void onBillAmountEditingComplete() {
      final amount = ref.read(billAmountProvider);
      billAmountController.value = TextEditingValue(
        text: Formatters.currency(amount),
        selection: TextSelection.collapsed(offset: Formatters.currency(amount).length),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TipWise',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(
              controller: billAmountController,
              label: 'Bill Amount',
              icon: Icons.attach_money,
              onChanged: onBillAmountChanged,
              onEditingComplete: onBillAmountEditingComplete,
            ),
            const SizedBox(height: 20),
            SliderTip(
              tipPercentage: tipInput.tipPercentage,
              onChanged: (value) {
                ref.read(tipPercentageProvider.notifier).state = value;
              },
            ),
            const SizedBox(height: 20),
            PeopleSelector(
              count: tipInput.numberOfPeople,
              onChanged: (value) {
                ref.read(numberOfPeopleProvider.notifier).state = value;
              },
            ),
            const SizedBox(height: 30),
            ResultCard(tipInput: tipInput),
          ],
        ),
      ),
    );
  }
}
