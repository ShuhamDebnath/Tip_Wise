import 'package:flutter/material.dart';

class SliderTip extends StatelessWidget {
  final double tipPercentage;
  final ValueChanged<double> onChanged;

  const SliderTip({
    super.key,
    required this.tipPercentage,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tip Percentage: ${(tipPercentage * 100).toStringAsFixed(0)}%',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Slider(
          value: tipPercentage,
          min: 0.0,
          max: 0.5,
          divisions: 50,
          label: '${(tipPercentage * 100).toStringAsFixed(0)}%',
          onChanged: onChanged,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('0%', style: Theme.of(context).textTheme.bodySmall),
            Text('50%', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ],
    );
  }
}
