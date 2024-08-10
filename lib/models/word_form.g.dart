// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordForm _$WordFormFromJson(Map<String, dynamic> json) => WordForm(
      inflectionType: json['inflectionType'] as String?,
      code: json['code'] as String,
      morphValue: json['morphValue'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$WordFormToJson(WordForm instance) => <String, dynamic>{
      'inflectionType': instance.inflectionType,
      'code': instance.code,
      'morphValue': instance.morphValue,
      'value': instance.value,
    };
