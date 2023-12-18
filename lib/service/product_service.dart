import 'package:dio/dio.dart';

abstract class BaseService {
  Dio dio = Dio();
  String baseurl = 'https://dummyjson.com/products';
  late Response response;
}
