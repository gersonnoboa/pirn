import 'package:flutter/material.dart';
import 'package:pirn/models/translations.dart';

class TranslationView extends StatelessWidget {
  final Translations translations;

  const TranslationView({super.key, required this.translations});

  String convertLanguageCodeToFull(String code) {
    switch (code) {
      case "en":
        return "English";
      default:
        return code;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            convertLanguageCodeToFull(translations.to),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          for (final translation in translations.translations)
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  translation,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
