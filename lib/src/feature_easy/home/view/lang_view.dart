import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:localization/src/feature_easy/widgets/switch_tile_menu.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Language',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 26),
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: const Text(
                'Choose language',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            SwitchListTileMenuItem(
                title: 'عربي',
                subtitle: 'عربي',
                locale:
                    context.supportedLocales[1] //BuildContext extension method
                ),
            const _Divider(),
            SwitchListTileMenuItem(
                title: 'English',
                subtitle: 'English',
                locale: context.supportedLocales[0]),
            const _Divider(),
            SwitchListTileMenuItem(
                title: 'German',
                subtitle: 'German',
                locale: context.supportedLocales[2]),
            const _Divider(),
            SwitchListTileMenuItem(
                title: 'Русский',
                subtitle: 'Русский',
                locale: context.supportedLocales[3]),
            const _Divider(),
          ],
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: const Divider(
        color: Colors.grey,
      ),
    );
  }
}
