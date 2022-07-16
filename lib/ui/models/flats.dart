import 'package:bavito_mobile_app/ui/models/offer.dart';

class Flats extends Offer {
  final String floor;
  final bool isDone;
  final String square;
  Flats({
    required String object,
    required String address,
    required double price,
    required String date,
    required String image,
    required this.isDone,
    required this.floor,
    required this.square,
  }) : super(
          object: object,
          address: address,
          price: price,
          image: image,
        );
}
