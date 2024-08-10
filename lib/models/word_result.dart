import 'package:json_annotation/json_annotation.dart';
import 'package:pirn/models/search_result.dart';
import 'package:pirn/models/translations.dart';

part 'word_result.g.dart';

@JsonSerializable()
class WordResult {
  final String requestedWord;
  final String estonianWord;
  final List<SearchResult> searchResult;
  final List<Translations> translations;

  WordResult({
    required this.requestedWord,
    required this.estonianWord,
    required this.searchResult,
    required this.translations,
  });

  factory WordResult.fromJson(Map<String, dynamic> json) =>
      _$WordResultFromJson(json);
  Map<String, dynamic> toJson() => _$WordResultToJson(this);
}
