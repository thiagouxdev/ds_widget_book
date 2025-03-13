import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'ui/widgets/card_widget.dart';
import 'ui/widgets/primary_button.dart';

class DesignSystemApp extends StatelessWidget {
  const DesignSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      themeMode: ThemeMode.dark,
      directories: [
        WidgetbookFolder(
          name: 'Buttons',
          children: [
            WidgetbookComponent(
              name: 'PrimaryButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder:
                      (context) =>
                          Center(child: const PrimaryButton(text: 'Click Me')),
                ),
              ],
            ),
          ],
        ),
        WidgetbookFolder(
          name: 'Cards',
          children: [
            WidgetbookComponent(
              name: 'CardWidget',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder:
                      (context) => Center(
                        child: const CardWidget(
                          title: 'Hello',
                          content: 'This is a sample card.',
                        ),
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light().copyWith(
                scaffoldBackgroundColor: const Color(0xFF1A1C1E),
              ),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: const Color(0xFF1A1C1E),
              ),
            ),
          ],
        ),
        DeviceFrameAddon(
          devices: [Devices.android.samsungGalaxyS20, Devices.ios.iPhone13],
        ),
      ],
    );
  }
}
