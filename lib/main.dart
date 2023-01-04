import 'package:flutter/material.dart';
import 'package:theme_example/extensions/page_extension.dart';
import 'package:theme_example/screens/color_screen.dart';
import 'package:theme_example/screens/components_screen.dart';
import 'package:theme_example/screens/typography_screen.dart';
import 'package:theme_example/theme/text_themes.dart';

import 'theme/color_schemes.g.dart';

void main() {
  runApp(const ThemeApp());
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          typography: typography,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          typography: typography,
        ),
        home: const Spec(),
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              scrollbars: false,
            ),
            child: child!,
          );
        });
  }
}

class Spec extends StatelessWidget {
  const Spec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text("Theme Example"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                ListTile(
                  title: Text(
                    'Typography',
                    style: textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "Use typography to make writing legible and beautiful. "
                    "Material's default type scale includes contrasting and flexible "
                    "styles to support a wide range of use cases.",
                    style: textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 25),
                ListTile(
                  title: Text(
                    'Color Scheme',
                    style: textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "The color system handles the variability of "
                    "dynamically changing color schemes that arise as user "
                    "inputs change. The logic of tonal relationships and shifts in hue "
                    "and chroma provide a foundation for flexible color application. "
                    "Color schemes can be considered a cohesive group of relative tones, "
                    "rather than a fixed group of constant values.",
                    style: textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 25),
                ListTile(
                  title: Text(
                    'Components',
                    style: textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "Components are the building blocks of a Material Design user interface. "
                    "They are the fundamental elements of design that make up the visual "
                    "composition of a UI. Components are the basic building blocks of "
                    "Material Design, and they are the primitives on which the rest of the "
                    "library is built. Components can be used to implement various types of "
                    "designs, such as full-featured applications, motion-rich interactive "
                    "experiences, and more.",
                    style: textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Text(
                  'Content',
                  style: textTheme.displayMedium,
                ),
              ),
              ListTile(
                title: Text(
                  'Typography',
                  style: textTheme.titleMedium,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    const TypographyScreen().pageRoute,
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Color Scheme',
                  style: textTheme.titleMedium,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    const ColorScreen().pageRoute,
                  );
                },
              ),
              ListTile(
                title: Text(
                  'Components',
                  style: textTheme.titleMedium,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    const ComponentsScreen().pageRoute,
                  );
                },
              ),
            ],
          ),
        ));
  }
}
