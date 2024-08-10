import 'package:flutter/material.dart';
import 'package:pirn/models/word_result.dart';
import 'package:pirn/views/cases/case_view.dart';

class CasesScrollView extends StatelessWidget {
  final WordResult wordResult;

  const CasesScrollView({super.key, required this.wordResult});

  List<Widget> get cases {
    List<Widget> definitions = [];

    for (final (index, result)
        in wordResult.searchResult.first.wordForms.indexed) {
      final caseView = CaseView(
        type: result.morphValue,
        singular: result.value,
        plural: "",
      );

      definitions.add(caseView);
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
          children: cases,
        ),
      ),
    );
  }
}
