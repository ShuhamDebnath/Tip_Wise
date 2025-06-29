import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/tip_input.dart';
import '../../data/services/tip_service.dart';
import 'package:tip_wise/core/utils/formatters.dart';

class ResultCard extends ConsumerWidget {
  final TipInput tipInput;

  const ResultCard({
    super.key,
    required this.tipInput,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tipPerPerson = TipService.calculateTipPerPerson(tipInput);
    final totalPerPerson = TipService.calculateTotalPerPerson(tipInput);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildResultRow('Tip per person', Formatters.currency(tipPerPerson)),
            const SizedBox(height: 10),
            _buildResultRow('Total per person', Formatters.currency(totalPerPerson)),
          ],
        ),
      ),
    );
  }

  Widget _buildResultRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
