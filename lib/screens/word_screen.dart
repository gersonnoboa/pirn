import 'package:flutter/material.dart';
import 'package:pirn/models/word_result.dart';
import 'package:pirn/views/cases/cases_scroll_view.dart';
import 'package:pirn/views/definitions/definitions_scroll_view.dart';
import 'package:pirn/views/synonyms_scroll_view.dart';

class WordScreen extends StatelessWidget {
  final WordResult wordResult;

  const WordScreen({super.key, required this.wordResult});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (wordResult.searchResult.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(wordResult.estonianWord),
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: const Center(child: Text("That word doesn't exist")),
      );
    } else {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "DEFINITION",
                ),
                Tab(text: "CASES"),
                Tab(text: "SYNONYMS"),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
            ),
            title: Text(wordResult.estonianWord),
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          body: TabBarView(
            children: [
              DefinitionsScrollView(wordResult: wordResult),
              CasesScrollView(
                wordResult: wordResult,
              ),
              SynonymsScrollView(),
            ],
          ),
        ),
      );
    }
  }
}
