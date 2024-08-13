import 'package:flutter/material.dart';
import 'package:pirn/models/word_result.dart';
import 'package:pirn/views/definitions/definition_view.dart';

class DefinitionsScrollView extends StatelessWidget {
  final WordResult wordResult;
  const DefinitionsScrollView({super.key, required this.wordResult});

  List<Widget> get definitions {
    List<Widget> definitions = [];

    for (final (index, result) in wordResult.searchResult.indexed) {
      if (result.meanings.isEmpty) continue;

      final firstMeaning = result.meanings.first;

      definitions.add(
        DefinitionView(
          index: "${index + 1}",
          partOfSpeech: firstMeaning.partOfSpeech.firstOrNull?.value ?? "",
          definition: firstMeaning.definition,
          indentation: 0,
        ),
      );

      definitions.add(const Divider());

      if (result.meanings.length > 1) {
        for (final (meaningIndex, meaning) in result.meanings.indexed) {
          if (meaningIndex == 0) continue;
          if (meaning.partOfSpeech.elementAtOrNull(0) == null) continue;

          definitions.add(
            DefinitionView(
              index: "${index + 1}.$meaningIndex",
              partOfSpeech: meaning.partOfSpeech.first.value,
              definition: meaning.definition,
              indentation: 1,
            ),
          );

          definitions.add(const Divider());
        }
      }
    }

    return definitions;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: definitions,
        ),
      ),
    );
  }
}
