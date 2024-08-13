import 'dart:collection';

import 'package:json_annotation/json_annotation.dart';
import 'package:pirn/models/case.dart';
import 'package:pirn/models/case_word.dart';
import 'package:pirn/models/meaning.dart';
import 'package:pirn/models/word_form.dart';

part 'search_result.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchResult {
  final List<WordForm> wordForms;
  final List<Meaning> meanings;
  final List<String> wordClasses;

  SearchResult({
    required this.wordForms,
    required this.meanings,
    required this.wordClasses,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);

  List<CasePair> get casePairs {
    List<CasePair> result = [];

    for (var element in Case.cases) {
      var caseWord = _generateForCase(element);
      result.add(caseWord);
    }

    return result;
  }

  CasePair _generateForCase(Case estonianCase) {
    var singular =
        wordForms.firstWhere((x) => x.code == estonianCase.singularCase.label);
    var plural =
        wordForms.firstWhere((x) => x.code == estonianCase.pluralCase.label);

    return CasePair(
      longName: estonianCase.longName,
      singular: singular,
      plural: plural,
    );
  }
}
