import 'package:flutter_dotenv/flutter_dotenv.dart';
class UrlPath{
  static String url = dotenv.get("URL");
  static String addParam(String param){
    url+=param;
    return url;
  }
}
class EnvPath {
  static const envPath = 'lib/app/config/.env';
}