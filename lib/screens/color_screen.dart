import 'package:flutter/material.dart';

/// {@template color_screen}
/// ColorScreen widget
/// {@endtemplate}
class ColorScreen extends StatelessWidget {
  /// {@macro color_screen}
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("Color"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          mainAxisExtent: 100,
        ),
        children: [
          _PaletteItem(
            color: colorTheme.error,
            textColor: colorTheme.onError,
            name: 'Error',
          ),
          _PaletteItem(
            color: colorTheme.onError,
            textColor: colorTheme.error,
            name: 'On Error',
          ),
          _PaletteItem(
            color: colorTheme.background,
            textColor: colorTheme.onBackground,
            name: 'Background',
          ),
          _PaletteItem(
            color: colorTheme.onBackground,
            textColor: colorTheme.background,
            name: 'On Background',
          ),
          _PaletteItem(
            color: colorTheme.primary,
            textColor: colorTheme.onPrimary,
            name: 'Primary',
          ),
          _PaletteItem(
            color: colorTheme.onPrimary,
            textColor: colorTheme.primary,
            name: 'On Primary',
          ),
          _PaletteItem(
            color: colorTheme.secondary,
            textColor: colorTheme.onSecondary,
            name: 'Secondary',
          ),
          _PaletteItem(
            color: colorTheme.onSecondary,
            textColor: colorTheme.secondary,
            name: 'On Secondary',
          ),
          _PaletteItem(
            color: colorTheme.surface,
            name: 'Surface',
            textColor: colorTheme.onSurface,
          ),
          _PaletteItem(
            color: colorTheme.onSurface,
            textColor: colorTheme.surface,
            name: 'On Surface',
          ),
          _PaletteItem(
            color: colorTheme.primaryContainer,
            textColor: colorTheme.onPrimaryContainer,
            name: 'Primary Container',
          ),
          _PaletteItem(
            color: colorTheme.onPrimaryContainer,
            textColor: colorTheme.primaryContainer,
            name: 'On Primary Container',
          ),
          _PaletteItem(
            color: colorTheme.secondaryContainer,
            textColor: colorTheme.onSecondaryContainer,
            name: 'Secondary Container',
          ),
          _PaletteItem(
            color: colorTheme.onSecondaryContainer,
            textColor: colorTheme.secondaryContainer,
            name: 'On Secondary Container',
          ),
          _PaletteItem(
            color: colorTheme.tertiary,
            textColor: colorTheme.onTertiary,
            name: 'Tertiary',
          ),
          _PaletteItem(
            color: colorTheme.onTertiary,
            textColor: colorTheme.tertiary,
            name: 'On Tertiary',
          ),
          _PaletteItem(
            color: colorTheme.tertiaryContainer,
            textColor: colorTheme.onTertiaryContainer,
            name: 'Tertiary Container',
          ),
          _PaletteItem(
            color: colorTheme.onTertiaryContainer,
            textColor: colorTheme.tertiaryContainer,
            name: 'On Tertiary Container',
          ),
        ],
      ),
    );
  }
} // ColorScreen

/// {@template color_screen}
/// _PaletteItem widget
/// {@endtemplate}
class _PaletteItem extends StatelessWidget {
  /// {@macro color_screen}
  const _PaletteItem({
    required this.color,
    required this.name,
    required this.textColor,
  });

  final Color color;
  final String name;
  final Color textColor;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 12),
          child: Text(
            name,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: textColor,
                ),
          ),
        ),
      );
} // _PaletteItem
