import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study0722/model/weather/weather_model.dart';

import '../model/base/base_model.dart';
import '../network/dio_factory.dart';

final WeatherModelListeProvider = StateProvider<List<WeatherModel>>((ref) =>[]);
final dropDownItemIndex = StateProvider<int>((ref) => 0);

Future<List<WeatherModel>> getWeather(String date,int time, int nx, int ny)async {
  final Dio _dio = DioFactory.getDio();
  print(_dio.options.baseUrl);
  List<WeatherModel> weatherList = [];
  try {
    Map<String, dynamic> params = {
      'serviceKey': dotenv.get("API_KEY"),
      'pageNo':1,
      'numOfRows':1000,
      'dataType':"JSON",
      'base_date':date,
      'base_time': time>10?time.toString()+'00':'0'+time.toString()+'00',
      'nx': nx,
      'ny':ny
    };
    final response = await _dio.get(
        dotenv.get("ADDITIANL_URL"),
        queryParameters: params
    );
    BaseResponse baseResponse = BaseResponse.fromJson(response.data);
    print(baseResponse.response['header']);
    if (baseResponse.response['header']['resultCode'] == "00") {
      for (var data in baseResponse.response['body']['items']['item']!) {
        print(data);
        WeatherModel fromjson = WeatherModel.fromJson(data);
        print("d");
        weatherList.add(fromjson);
      }
    }
    return weatherList;
  }
  catch(e){
    print(e.toString());

    return [];
  }
}