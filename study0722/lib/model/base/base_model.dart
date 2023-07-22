
import 'package:freezed_annotation/freezed_annotation.dart';

import '../weather/weather_model.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';


@freezed
class BaseResponse with _$BaseResponse{
   factory BaseResponse({
    required Map<String,dynamic> response,
  }) = _BaseResponse;
  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}

@freezed
class ResponeModel with _$ResponeModel{
  factory ResponeModel({
    required Map<String,dynamic> header,
    required Map<String,dynamic> body,
  }) = _ResponeModel;
  factory ResponeModel.fromJson(Map<String, dynamic> json) =>
      _$ResponeModelFromJson(json);
}

@freezed
class HeaderModel with _$HeaderModel{
   factory HeaderModel({
    required String resultCode,
    required String reslutlMsg,
}) = _HeaderModel;
   factory HeaderModel.fromJson(Map<String, dynamic> json) =>
       _$HeaderModelFromJson(json);
}

@freezed
class BodyModel with _$BodyModel{
  factory BodyModel({
    required String dataType,
    required Map<String,dynamic> items,
    required int pageNo,
    required int numOfRows,
    required int totalCount,

}) = _BodyModel;
  factory BodyModel.fromJson(Map<String, dynamic> json) =>
      _$BodyModelFromJson(json);
}

// flutter pub run build_runner build