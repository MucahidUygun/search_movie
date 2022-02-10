import 'package:dio/dio.dart';

class NetworkClint {
  static NetworkClint? _instance;
  static NetworkClint get instance{
  _instance ??= NetworkClint._init();
  return _instance!;
}
  late Dio dio;
  NetworkClint._init(){
    dio = Dio();
    dio.options.headers["content-Type"]="application/json";
    dio.options.headers["Authorization"]="apikey";
  }
}