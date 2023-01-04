import 'package:flutter/material.dart';

/// {@template typography_screen}
/// TypographyScreen widget
/// {@endtemplate}
class TypographyScreen extends StatelessWidget {
  /// {@macro typography_screen}
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text("Typography"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text(
                'Display large',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 25),
              Text(
                'Display medium',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 25),
              Text(
                'Display small',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25),
              Text(
                'Headline large',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 25),
              Text(
                'Headline medium',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 25),
              Text(
                'Headline small',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 25),
              Text(
                'Title large',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 25),
              Text(
                'Title medium',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 25),
              Text(
                'Title small',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 25),
              Text(
                'Body large',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 25),
              Text(
                'Body medium',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 25),
              Text(
                'Body small',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 25),
              Text(
                'Label large',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 25),
              Text(
                'Label medium',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 25),
              Text(
                'Label small',
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      );
} // TypographyScreen
