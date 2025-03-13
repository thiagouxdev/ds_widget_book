import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String content;
  const CardWidget({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}
