import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/tip_calculator/presentation/screens/tip_screen.dart';

void main() {
  runApp(const TipWiseApp());
}

class TipWiseApp extends StatelessWidget {
  const TipWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'TipWise',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: const TipScreen(),
      ),
    );
  }
}
