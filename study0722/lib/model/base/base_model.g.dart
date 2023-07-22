// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponse _$$_BaseResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseResponse(
      response: json['response'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_BaseResponseToJson(_$_BaseResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_ResponeModel _$$_ResponeModelFromJson(Map<String, dynamic> json) =>
    _$_ResponeModel(
      header: json['header'] as Map<String, dynamic>,
      body: json['body'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ResponeModelToJson(_$_ResponeModel instance) =>
    <String, dynamic>{
      'header': instance.header,
      'body': instance.body,
    };

_$_HeaderModel _$$_HeaderModelFromJson(Map<String, dynamic> json) =>
    _$_HeaderModel(
      resultCode: json['resultCode'] as String,
      reslutlMsg: json['reslutlMsg'] as String,
    );

Map<String, dynamic> _$$_HeaderModelToJson(_$_HeaderModel instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'reslutlMsg': instance.reslutlMsg,
    };

_$_BodyModel _$$_BodyModelFromJson(Map<String, dynamic> json) => _$_BodyModel(
      dataType: json['dataType'] as String,
      items: json['items'] as Map<String, dynamic>,
      pageNo: json['pageNo'] as int,
      numOfRows: json['numOfRows'] as int,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$$_BodyModelToJson(_$_BodyModel instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'items': instance.items,
      'pageNo': instance.pageNo,
      'numOfRows': instance.numOfRows,
      'totalCount': instance.totalCount,
    };
