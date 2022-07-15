import 'package:bavito_mobile_app/ui/models/offer.dart';

class Flats extends Offer {
  final bool isDone;
  Flats({
    required String object,
    required String square,
    required String floor,
    required String address,
    required String price,
    required String date,
    required String image,
    required this.isDone,
  }) : super(
          object: object,
          square: square,
          floor: floor,
          address: address,
          price: price,
          date: date,
          image: image,
        );
}
