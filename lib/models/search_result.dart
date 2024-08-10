import 'package:json_annotation/json_annotation.dart';
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
}
