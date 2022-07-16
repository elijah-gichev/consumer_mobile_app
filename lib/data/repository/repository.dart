import 'package:dio/dio.dart';

class Repository {
  final String dom = 'https://api-consumer-app.herokuapp.com/';
  final Dio dio;
  final token = 1;
  Repository({
    required this.dio,
  });

  
}
