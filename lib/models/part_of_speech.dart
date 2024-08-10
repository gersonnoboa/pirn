import 'package:json_annotation/json_annotation.dart';

part 'part_of_speech.g.dart';

@JsonSerializable(explicitToJson: true)
class PartOfSpeech {
  final String code;
  final String value;

  PartOfSpeech({required this.code, required this.value});

  factory PartOfSpeech.fromJson(Map<String, dynamic> json) =>
      _$PartOfSpeechFromJson(json);
  Map<String, dynamic> toJson() => _$PartOfSpeechToJson(this);
}
