import 'package:bavito_mobile_app/ui/models/flats.dart';
import 'package:injectable/injectable.dart';

@singleton
class FlatsRepository {
  final List<Flats> _offers = [
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house2.png',
      isDone: true,
    ),
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house4.jpg',
      isDone: false,
    ),
    Flats(
      object: 'Квартира-студия, 40м², 16/23 эт.',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: '20 млн',
      date: '14.05.2022',
      image: 'assets/images/house5.jpg',
      isDone: true,
    ),
  ];

  Future<List<Flats>> getFlats() async {
    await Future.delayed(const Duration(seconds: 1));
    return _offers;
  }
}
