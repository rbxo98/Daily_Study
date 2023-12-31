// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponse {
  ResponeModel get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) then) =
      _$BaseResponseCopyWithImpl<$Res, BaseResponse>;
  @useResult
  $Res call({ResponeModel response});

  $ResponeModelCopyWith<$Res> get response;
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res, $Val extends BaseResponse>
    implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponeModelCopyWith<$Res> get response {
    return $ResponeModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BaseResponseCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$$_BaseResponseCopyWith(
          _$_BaseResponse value, $Res Function(_$_BaseResponse) then) =
      __$$_BaseResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponeModel response});

  @override
  $ResponeModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$_BaseResponseCopyWithImpl<$Res>
    extends _$BaseResponseCopyWithImpl<$Res, _$_BaseResponse>
    implements _$$_BaseResponseCopyWith<$Res> {
  __$$_BaseResponseCopyWithImpl(
      _$_BaseResponse _value, $Res Function(_$_BaseResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_BaseResponse(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResponse implements _BaseResponse {
  _$_BaseResponse({required this.response});

  factory _$_BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BaseResponseFromJson(json);

  @override
  final ResponeModel response;

  @override
  String toString() {
    return 'BaseResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResponse &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseResponseCopyWith<_$_BaseResponse> get copyWith =>
      __$$_BaseResponseCopyWithImpl<_$_BaseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseResponseToJson(
      this,
    );
  }
}

abstract class _BaseResponse implements BaseResponse {
  factory _BaseResponse({required final ResponeModel response}) =
      _$_BaseResponse;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseResponse.fromJson;

  @override
  ResponeModel get response;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResponseCopyWith<_$_BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponeModel _$ResponeModelFromJson(Map<String, dynamic> json) {
  return _ResponeModel.fromJson(json);
}

/// @nodoc
mixin _$ResponeModel {
  HeaderModel get header => throw _privateConstructorUsedError;
  BodyModel get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponeModelCopyWith<ResponeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponeModelCopyWith<$Res> {
  factory $ResponeModelCopyWith(
          ResponeModel value, $Res Function(ResponeModel) then) =
      _$ResponeModelCopyWithImpl<$Res, ResponeModel>;
  @useResult
  $Res call({HeaderModel header, BodyModel body});

  $HeaderModelCopyWith<$Res> get header;
  $BodyModelCopyWith<$Res> get body;
}

/// @nodoc
class _$ResponeModelCopyWithImpl<$Res, $Val extends ResponeModel>
    implements $ResponeModelCopyWith<$Res> {
  _$ResponeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as BodyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HeaderModelCopyWith<$Res> get header {
    return $HeaderModelCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyModelCopyWith<$Res> get body {
    return $BodyModelCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponeModelCopyWith<$Res>
    implements $ResponeModelCopyWith<$Res> {
  factory _$$_ResponeModelCopyWith(
          _$_ResponeModel value, $Res Function(_$_ResponeModel) then) =
      __$$_ResponeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HeaderModel header, BodyModel body});

  @override
  $HeaderModelCopyWith<$Res> get header;
  @override
  $BodyModelCopyWith<$Res> get body;
}

/// @nodoc
class __$$_ResponeModelCopyWithImpl<$Res>
    extends _$ResponeModelCopyWithImpl<$Res, _$_ResponeModel>
    implements _$$_ResponeModelCopyWith<$Res> {
  __$$_ResponeModelCopyWithImpl(
      _$_ResponeModel _value, $Res Function(_$_ResponeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? body = null,
  }) {
    return _then(_$_ResponeModel(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as BodyModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponeModel implements _ResponeModel {
  _$_ResponeModel({required this.header, required this.body});

  factory _$_ResponeModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponeModelFromJson(json);

  @override
  final HeaderModel header;
  @override
  final BodyModel body;

  @override
  String toString() {
    return 'ResponeModel(header: $header, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponeModel &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, header, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponeModelCopyWith<_$_ResponeModel> get copyWith =>
      __$$_ResponeModelCopyWithImpl<_$_ResponeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponeModelToJson(
      this,
    );
  }
}

abstract class _ResponeModel implements ResponeModel {
  factory _ResponeModel(
      {required final HeaderModel header,
      required final BodyModel body}) = _$_ResponeModel;

  factory _ResponeModel.fromJson(Map<String, dynamic> json) =
      _$_ResponeModel.fromJson;

  @override
  HeaderModel get header;
  @override
  BodyModel get body;
  @override
  @JsonKey(ignore: true)
  _$$_ResponeModelCopyWith<_$_ResponeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

HeaderModel _$HeaderModelFromJson(Map<String, dynamic> json) {
  return _HeaderModel.fromJson(json);
}

/// @nodoc
mixin _$HeaderModel {
  String get resultCode => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderModelCopyWith<HeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderModelCopyWith<$Res> {
  factory $HeaderModelCopyWith(
          HeaderModel value, $Res Function(HeaderModel) then) =
      _$HeaderModelCopyWithImpl<$Res, HeaderModel>;
  @useResult
  $Res call({String resultCode, String resultMsg});
}

/// @nodoc
class _$HeaderModelCopyWithImpl<$Res, $Val extends HeaderModel>
    implements $HeaderModelCopyWith<$Res> {
  _$HeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
  }) {
    return _then(_value.copyWith(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeaderModelCopyWith<$Res>
    implements $HeaderModelCopyWith<$Res> {
  factory _$$_HeaderModelCopyWith(
          _$_HeaderModel value, $Res Function(_$_HeaderModel) then) =
      __$$_HeaderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resultCode, String resultMsg});
}

/// @nodoc
class __$$_HeaderModelCopyWithImpl<$Res>
    extends _$HeaderModelCopyWithImpl<$Res, _$_HeaderModel>
    implements _$$_HeaderModelCopyWith<$Res> {
  __$$_HeaderModelCopyWithImpl(
      _$_HeaderModel _value, $Res Function(_$_HeaderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
  }) {
    return _then(_$_HeaderModel(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeaderModel implements _HeaderModel {
  _$_HeaderModel({required this.resultCode, required this.resultMsg});

  factory _$_HeaderModel.fromJson(Map<String, dynamic> json) =>
      _$$_HeaderModelFromJson(json);

  @override
  final String resultCode;
  @override
  final String resultMsg;

  @override
  String toString() {
    return 'HeaderModel(resultCode: $resultCode, resultMsg: $resultMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeaderModel &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, resultMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeaderModelCopyWith<_$_HeaderModel> get copyWith =>
      __$$_HeaderModelCopyWithImpl<_$_HeaderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeaderModelToJson(
      this,
    );
  }
}

abstract class _HeaderModel implements HeaderModel {
  factory _HeaderModel(
      {required final String resultCode,
      required final String resultMsg}) = _$_HeaderModel;

  factory _HeaderModel.fromJson(Map<String, dynamic> json) =
      _$_HeaderModel.fromJson;

  @override
  String get resultCode;
  @override
  String get resultMsg;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderModelCopyWith<_$_HeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyModel _$BodyModelFromJson(Map<String, dynamic> json) {
  return _BodyModel.fromJson(json);
}

/// @nodoc
mixin _$BodyModel {
  String get dataType => throw _privateConstructorUsedError;
  Map<String, dynamic> get items => throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  int get numOfRows => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyModelCopyWith<BodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyModelCopyWith<$Res> {
  factory $BodyModelCopyWith(BodyModel value, $Res Function(BodyModel) then) =
      _$BodyModelCopyWithImpl<$Res, BodyModel>;
  @useResult
  $Res call(
      {String dataType,
      Map<String, dynamic> items,
      int pageNo,
      int numOfRows,
      int totalCount});
}

/// @nodoc
class _$BodyModelCopyWithImpl<$Res, $Val extends BodyModel>
    implements $BodyModelCopyWith<$Res> {
  _$BodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataType = null,
    Object? items = null,
    Object? pageNo = null,
    Object? numOfRows = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BodyModelCopyWith<$Res> implements $BodyModelCopyWith<$Res> {
  factory _$$_BodyModelCopyWith(
          _$_BodyModel value, $Res Function(_$_BodyModel) then) =
      __$$_BodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dataType,
      Map<String, dynamic> items,
      int pageNo,
      int numOfRows,
      int totalCount});
}

/// @nodoc
class __$$_BodyModelCopyWithImpl<$Res>
    extends _$BodyModelCopyWithImpl<$Res, _$_BodyModel>
    implements _$$_BodyModelCopyWith<$Res> {
  __$$_BodyModelCopyWithImpl(
      _$_BodyModel _value, $Res Function(_$_BodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataType = null,
    Object? items = null,
    Object? pageNo = null,
    Object? numOfRows = null,
    Object? totalCount = null,
  }) {
    return _then(_$_BodyModel(
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BodyModel implements _BodyModel {
  _$_BodyModel(
      {required this.dataType,
      required final Map<String, dynamic> items,
      required this.pageNo,
      required this.numOfRows,
      required this.totalCount})
      : _items = items;

  factory _$_BodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_BodyModelFromJson(json);

  @override
  final String dataType;
  final Map<String, dynamic> _items;
  @override
  Map<String, dynamic> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  final int pageNo;
  @override
  final int numOfRows;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'BodyModel(dataType: $dataType, items: $items, pageNo: $pageNo, numOfRows: $numOfRows, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BodyModel &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataType,
      const DeepCollectionEquality().hash(_items),
      pageNo,
      numOfRows,
      totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BodyModelCopyWith<_$_BodyModel> get copyWith =>
      __$$_BodyModelCopyWithImpl<_$_BodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BodyModelToJson(
      this,
    );
  }
}

abstract class _BodyModel implements BodyModel {
  factory _BodyModel(
      {required final String dataType,
      required final Map<String, dynamic> items,
      required final int pageNo,
      required final int numOfRows,
      required final int totalCount}) = _$_BodyModel;

  factory _BodyModel.fromJson(Map<String, dynamic> json) =
      _$_BodyModel.fromJson;

  @override
  String get dataType;
  @override
  Map<String, dynamic> get items;
  @override
  int get pageNo;
  @override
  int get numOfRows;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$_BodyModelCopyWith<_$_BodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
