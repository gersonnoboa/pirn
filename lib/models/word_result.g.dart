// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordResult _$WordResultFromJson(Map<String, dynamic> json) => WordResult(
      requestedWord: json['requestedWord'] as String,
      estonianWord: json['estonianWord'] as String,
      searchResult: (json['searchResult'] as List<dynamic>)
          .map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      translations: (json['translations'] as List<dynamic>)
          .map((e) => Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WordResultToJson(WordResult instance) =>
    <String, dynamic>{
      'requestedWord': instance.requestedWord,
      'estonianWord': instance.estonianWord,
      'searchResult': instance.searchResult,
      'translations': instance.translations,
    };
