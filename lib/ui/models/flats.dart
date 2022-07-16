// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bavito_mobile_app/ui/models/offer.dart';

class Flats extends Offer {
  final String floor;
  final bool isDone;
  final String square;
  Flats({
    required String object,
    required String address,
    required num price,
    required String image,
    required this.floor,
    required this.isDone,
    required this.square,
  }) : super(
          object: object,
          address: address,
          price: price,
          image: image,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floor': floor,
      'isDone': isDone,
      'square': square,
    };
  }

  factory Flats.fromMap(Map<String, dynamic> map) {
    return Flats(
      floor: map['floor_count'].toString(),
      isDone: map['is_ready'] as bool,
      square: map['full_space'] as String,
      address: map["address"] as String,
      image: map["image"] ?? "assets/images/flat1.png",
      object: map["title"] as String,
      price: (map["cost"] as num) / 1000000,
    );
  }

  String toJson() => json.encode(toMap());

  factory Flats.fromJson(String source) => Flats.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Flats(floor: $floor, isDone: $isDone, square: $square)';

  @override
  bool operator ==(covariant Flats other) {
    if (identical(this, other)) return true;

    return other.floor == floor && other.isDone == isDone && other.square == square;
  }

  @override
  int get hashCode => floor.hashCode ^ isDone.hashCode ^ square.hashCode;
}
