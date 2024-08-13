import 'package:flutter/material.dart';
import 'package:pirn/models/word_result.dart';
import 'package:pirn/views/cases/case_pair_view.dart';
import 'package:pirn/views/cases/word_form_view.dart';

class CasesScrollView extends StatelessWidget {
  final WordResult wordResult;

  const CasesScrollView({super.key, required this.wordResult});

  List<Widget> get content {
    final wordClasses = wordResult.searchResult.first.wordClasses;
    if (wordClasses.contains("noomen")) {
      return cases;
    } else if (wordClasses.contains("verb")) {
      return verbs;
    } else {
      return inmutable;
    }
  }

  List<Widget> get cases {
    List<Widget> definitions = [];

    final searchResult = wordResult.searchResult.first;

    final numberedCases = searchResult.casePairs;

    for (final numberedCase in numberedCases) {
      final caseView = CasePairView(
        type: numberedCase.longName,
        singular: numberedCase.singular.value,
        plural: numberedCase.plural.value,
      );

      definitions.add(caseView);
    }
    return definitions;
  }

  List<Widget> get verbs {
    List<Widget> verbs = [];

    for (final form in wordResult.searchResult.first.wordForms) {
      final view = WordFormView(type: form.morphValue, value: form.value);
      verbs.add(view);
    }

    return verbs;
  }

  List<Widget> get inmutable {
    List<Widget> inmutables = [];

    for (final form in wordResult.searchResult.first.wordForms) {
      final view = WordFormView(type: form.morphValue, value: form.value);
      inmutables.add(view);
    }

    return inmutables;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content,
        ),
      ),
    );
  }
}
