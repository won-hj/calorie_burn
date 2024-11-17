// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exercise _$ExerciseFromJson(Map<String, dynamic> json) => Exercise(
      json['walkingStep'] as String,
      json['calorie'] as String,
    );

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'walkingStep': instance.walkingStep,
      'calorie': instance.calorie,
    };
