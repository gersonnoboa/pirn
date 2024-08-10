// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Translations _$TranslationsFromJson(Map<String, dynamic> json) => Translations(
      from: json['from'] as String,
      to: json['to'] as String,
      input: json['input'] as String,
      translations: (json['translations'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TranslationsToJson(Translations instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'input': instance.input,
      'translations': instance.translations,
    };
