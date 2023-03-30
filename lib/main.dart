import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const GpsdoMundo());
}

class GpsdoMundo extends StatelessWidget {
  // 2
  const GpsdoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();

    // 3
    return MaterialApp(
      theme: theme,
      title: 'GPS do Mundo',
      home: const Home(),
    );
  }
}
