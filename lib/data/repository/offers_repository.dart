import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:injectable/injectable.dart';

@singleton
class OffersRepository {
  final List<Offer> _offers = [
    Offer(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house2.png',
    ),
    Offer(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house4.jpg',
    ),
    Offer(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house5.jpg',
    ),
  ];

  Future<List<Offer>> getOffers() async {
    await Future.delayed(const Duration(seconds: 1));
    return _offers;
  }
}
