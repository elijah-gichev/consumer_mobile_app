import 'dart:convert';

import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class OffersRepository {
  final String dom = 'https://api-consumer-app.herokuapp.com';
  final Dio dio = Dio();
  final token = 1;
  // final List<Offer> _offers = [
  //   Offer(
  //     object: 'Дом',
  //     square: '100',
  //     floor: '2',
  //     address: 'Кировский р-н, Очаковская, 39',
  //     price: '20 млн',
  //     date: '14.05.2022',
  //     image: 'assets/images/house2.png',
  //   ),
  //   Offer(
  //     object: 'Дом',
  //     square: '100',
  //     floor: '2',
  //     address: 'Кировский р-н, Очаковская, 39',
  //     price: '20 млн',
  //     date: '14.05.2022',
  //     image: 'assets/images/house4.jpg',
  //   ),
  //   Offer(
  //     object: 'Дом',
  //     square: '100',
  //     floor: '2',
  //     address: 'Кировский р-н, Очаковская, 39',
  //     price: '20 млн',
  //     date: '14.05.2022',
  //     image: 'assets/images/house5.jpg',
  //   ),
  // ];
  
  Future<List<Offer>> getOffers() async {
    // try {
    final Response request = await dio.get(
      dom + '/api/complex',
      options: Options(
        headers: {
          "token": token,
        },
      ),
    );
    final data = jsonDecode(request.toString());
    final res = data["data"].map<Offer>(
      (e) => Offer.fromMap(e),
    ).toList();
    
    return res ;
    // } catch (e) {
    // print(e.toString());
    // }
  }
}
