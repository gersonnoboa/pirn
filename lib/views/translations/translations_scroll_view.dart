import 'package:flutter/material.dart';
import 'package:pirn/models/word_result.dart';
import 'package:pirn/views/translations/translation_view.dart';

class TranslationsScrollView extends StatelessWidget {
  final WordResult wordResult;
  const TranslationsScrollView({super.key, required this.wordResult});

  List<Widget> get translations {
    List<Widget> translations = [];

    for (var translation in wordResult.translations) {
      if (translation.translations.isEmpty) continue;

      final translationView = TranslationView(translations: translation);
      translations.add(translationView);
      translations.add(const Divider());
    }

    return translations;
  }

  @override
  Widget build(BuildContext context) {
    if (translations.isEmpty) {
      return const Center(child: Text("No translations"));
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: translations,
        ),
      ),
    );
  }
}
