// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  String get baseDate => throw _privateConstructorUsedError;
  String get baseTime => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get nx => throw _privateConstructorUsedError;
  int get ny => throw _privateConstructorUsedError;
  String get obsrValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {String baseDate,
      String baseTime,
      String category,
      int nx,
      int ny,
      String obsrValue});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseDate = null,
    Object? baseTime = null,
    Object? category = null,
    Object? nx = null,
    Object? ny = null,
    Object? obsrValue = null,
  }) {
    return _then(_value.copyWith(
      baseDate: null == baseDate
          ? _value.baseDate
          : baseDate // ignore: cast_nullable_to_non_nullable
              as String,
      baseTime: null == baseTime
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      nx: null == nx
          ? _value.nx
          : nx // ignore: cast_nullable_to_non_nullable
              as int,
      ny: null == ny
          ? _value.ny
          : ny // ignore: cast_nullable_to_non_nullable
              as int,
      obsrValue: null == obsrValue
          ? _value.obsrValue
          : obsrValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseDate,
      String baseTime,
      String category,
      int nx,
      int ny,
      String obsrValue});
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseDate = null,
    Object? baseTime = null,
    Object? category = null,
    Object? nx = null,
    Object? ny = null,
    Object? obsrValue = null,
  }) {
    return _then(_$_WeatherModel(
      baseDate: null == baseDate
          ? _value.baseDate
          : baseDate // ignore: cast_nullable_to_non_nullable
              as String,
      baseTime: null == baseTime
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      nx: null == nx
          ? _value.nx
          : nx // ignore: cast_nullable_to_non_nullable
              as int,
      ny: null == ny
          ? _value.ny
          : ny // ignore: cast_nullable_to_non_nullable
              as int,
      obsrValue: null == obsrValue
          ? _value.obsrValue
          : obsrValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel implements _WeatherModel {
  _$_WeatherModel(
      {required this.baseDate,
      required this.baseTime,
      required this.category,
      required this.nx,
      required this.ny,
      required this.obsrValue});

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final String baseDate;
  @override
  final String baseTime;
  @override
  final String category;
  @override
  final int nx;
  @override
  final int ny;
  @override
  final String obsrValue;

  @override
  String toString() {
    return 'WeatherModel(baseDate: $baseDate, baseTime: $baseTime, category: $category, nx: $nx, ny: $ny, obsrValue: $obsrValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.baseDate, baseDate) ||
                other.baseDate == baseDate) &&
            (identical(other.baseTime, baseTime) ||
                other.baseTime == baseTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.nx, nx) || other.nx == nx) &&
            (identical(other.ny, ny) || other.ny == ny) &&
            (identical(other.obsrValue, obsrValue) ||
                other.obsrValue == obsrValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, baseDate, baseTime, category, nx, ny, obsrValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  factory _WeatherModel(
      {required final String baseDate,
      required final String baseTime,
      required final String category,
      required final int nx,
      required final int ny,
      required final String obsrValue}) = _$_WeatherModel;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  String get baseDate;
  @override
  String get baseTime;
  @override
  String get category;
  @override
  int get nx;
  @override
  int get ny;
  @override
  String get obsrValue;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
