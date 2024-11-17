import 'package:json_annotation/json_annotation.dart';

part 'health_info.g.dart';

@JsonSerializable()
class Exercise{
  final String walkingStep;
  final String calorie;

  Exercise(this.walkingStep, this.calorie);

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}
