import 'package:flutter/material.dart';

class PeopleSelector extends StatelessWidget {
  final int count;
  final ValueChanged<int> onChanged;

  const PeopleSelector({
    super.key,
    required this.count,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Number of People',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                if (count > 1) onChanged(count - 1);
              },
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () => onChanged(count + 1),
            ),
          ],
        ),
      ],
    );
  }
}
