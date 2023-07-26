import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/base/base_model.dart';
import '../model/weather/weather_model.dart';
import '../network/dio_factory.dart';

final weatherModelListeProvider = StateProvider<List<WeatherModel>>((ref) => []);
final mainScrollProvider = StateProvider<ScrollController>((ref) => ScrollController());
final mainIndexProvider = StateProvider<int>((ref) => 0);
final mainProvider = Provider<MainProvider>((ref) => MainProvider(ref: ref));
final mainisMoreResultProvider = StateProvider.autoDispose<bool>((ref)=>false);
final mainPageScrollEndProvider = StateProvider.autoDispose<bool>((ref)=>false);

abstract class MainProviderInterface {
  getWeather(String date, int time, int nx, int ny);
  addPageIndex();
  setScrollEnd(bool value);
}

class MainProvider with MainProviderInterface {
  late final ProviderRef ref;

  final Dio _dio = DioFactory.getDio();

  MainProvider({required this.ref});

  @override
  addPageIndex() {
    ref.read(mainIndexProvider.notifier).state += 1;
  }

  @override
  setScrollEnd(bool value) {
    ref.read(mainPageScrollEndProvider.notifier).state= value;
  }

  @override
  getWeather(String date, int time, int nx, int ny) async {
    try {
      Map<String, dynamic> params = {
        'serviceKey': dotenv.get("API_KEY"),
        'pageNo': 1,
        'numOfRows': 1000,
        'dataType': "JSON",
        'base_date': date,
        'base_time':
            time > 10 ? time.toString() + '00' : '0' + time.toString() + '00',
        'nx': nx,
        'ny': ny
      };
      final response =
          await _dio.get('',queryParameters: params);
      print(response.data);
      List<WeatherModel> models = [];
      BaseResponse baseResponse = BaseResponse.fromJson(response.data);
      if (baseResponse.response.header.resultCode == "00") {
        for (var data in baseResponse.response.body.items['item']!) {
          WeatherModel fromjson = WeatherModel.fromJson(data);
          models.add(fromjson);
        }
      }
      final pastData=ref.read(weatherModelListeProvider.notifier).state;
      ref.read(weatherModelListeProvider.notifier).state=[...pastData,...models];
      print(ref.read(weatherModelListeProvider.notifier).state);
    } catch (e) {
      print(e.toString());
    }
  }
}
