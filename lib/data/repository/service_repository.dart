import 'package:bavito_mobile_app/ui/models/service.dart';
import 'package:injectable/injectable.dart';

@singleton
class ServiceRepository {
  List<Service> getDeliveryServices() {
    //await Future.delayed(const Duration(seconds: 1));
    return [
      Service(
        title: 'СУШИ DIMASH',
        description: 'Сеть магазинов японской кухни',
        rating: 4.9,
        cashback: 5,
        imgPath: 'assets/images/serviceImg1.jpg',
      ),
      Service(
        title: 'Пицца до до',
        description: 'Сеть пиццерий',
        rating: 4.0,
        cashback: 10,
        imgPath: 'assets/images/serviceImg2.jpg',
      ),
    ];
  }

  List<Service> getRestaurantServices() {
    //await Future.delayed(const Duration(seconds: 1));
    return [
      Service(
        title: 'Ресторан resort',
        description: 'Ресторан японской кухни',
        rating: 4.9,
        cashback: 2,
        imgPath: 'assets/images/serviceImg3.jpeg',
      ),
      Service(
        title: 'Ресторан подводный',
        description: 'Ресторан русской кухни',
        rating: 4.0,
        cashback: 10,
        imgPath: 'assets/images/serviceImg4.jpeg',
      ),
    ];
  }

  List<Service> getClothesServices() {
    //await Future.delayed(const Duration(seconds: 1));
    return [
      Service(
        title: 'Одежда',
        description: 'Магазин одежды для всей семьи',
        rating: 2,
        cashback: 20,
        imgPath: 'assets/images/serviceImg5.jpeg',
      ),
      Service(
        title: 'Henderson',
        description: 'Магазин одежды Henderson',
        rating: 4.0,
        cashback: 10,
        imgPath: 'assets/images/serviceImg6.jpg',
      ),
    ];
  }
}
