// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meaning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meaning _$MeaningFromJson(Map<String, dynamic> json) => Meaning(
      definition: json['definition'] as String,
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
      partOfSpeech: (json['partOfSpeech'] as List<dynamic>)
          .map((e) => PartOfSpeech.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeaningToJson(Meaning instance) => <String, dynamic>{
      'definition': instance.definition,
      'examples': instance.examples,
      'partOfSpeech': instance.partOfSpeech.map((e) => e.toJson()).toList(),
    };
