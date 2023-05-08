import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/app_button.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
    required this.setLocale,
  });
  final void Function(Locale locale) setLocale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.localization),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.localization_test,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.hello('Chuks'),
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppButton(
                title: 'French',
                onTap: () {
                  setLocale(
                    const Locale.fromSubtags(
                      languageCode: 'fr',
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          AppButton(
            title: 'English',
            onTap: () {
              setLocale(const Locale.fromSubtags(
                languageCode: 'en',
              ));
            },
          ),
        ],
      ),
    );
  }
}
