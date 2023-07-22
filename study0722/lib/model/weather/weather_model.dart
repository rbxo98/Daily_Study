
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';
@freezed
class WeatherModel with _$WeatherModel{
  factory WeatherModel({
    required String baseDate,
    required String baseTime,
    required String category,
    required int nx,
    required int ny,
    required String obsrValue,
}) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}