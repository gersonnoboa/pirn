import 'package:json_annotation/json_annotation.dart';

part 'word_form.g.dart';

@JsonSerializable(explicitToJson: true)
class WordForm {
  final String? inflectionType;
  final String code;
  final String morphValue;
  final String value;

  WordForm({
    this.inflectionType,
    required this.code,
    required this.morphValue,
    required this.value,
  });

  factory WordForm.fromJson(Map<String, dynamic> json) =>
      _$WordFormFromJson(json);
  Map<String, dynamic> toJson() => _$WordFormToJson(this);
}
