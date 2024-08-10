import 'package:json_annotation/json_annotation.dart';
import 'package:pirn/models/part_of_speech.dart';

part 'meaning.g.dart';

@JsonSerializable(explicitToJson: true)
class Meaning {
  final String definition;
  final List<String> examples;
  final List<PartOfSpeech> partOfSpeech;

  Meaning({
    required this.definition,
    required this.examples,
    required this.partOfSpeech,
  });

  factory Meaning.fromJson(Map<String, dynamic> json) =>
      _$MeaningFromJson(json);
  Map<String, dynamic> toJson() => _$MeaningToJson(this);
}
