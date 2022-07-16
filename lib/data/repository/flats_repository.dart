import 'dart:convert';

import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class FlatsRepository {
  final Dio dio = Dio();
  final String dom = 'https://api-consumer-app.herokuapp.com';
  final token = 1;
  final List<Flats> _offers = [
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house2.png',
      isDone: true,
    ),
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house4.jpg',
      isDone: false,
    ),
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house5.jpg',
      isDone: true,
    ),
  ];

  Future<List<Flats>> getFlats() async {
    final Response request = await dio.get(
      dom + '/api/client/flats',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final data = jsonDecode(request.toString());
    final res = data["data"]
        .map<Flats>(
          (e) => Flats.fromMap(e),
        )
        .toList();
    return res;
  }
}
