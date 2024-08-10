import 'package:json_annotation/json_annotation.dart';

part 'translations.g.dart';

@JsonSerializable(explicitToJson: true)
class Translations {
  final String from;
  final String to;
  final String input;
  final List<String> translations;

  Translations({
    required this.from,
    required this.to,
    required this.input,
    required this.translations,
  });

  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationsToJson(this);
}
