// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Offer {
  final String object;
  final String address;
  final num price;
  final String image;

  Offer({
    required this.object,
    required this.address,
    required this.price,
    required this.image,
  });

  Offer copyWith({
    String? object,
    String? square,
    String? floor,
    String? address,
    int? price,
    String? date,
    String? image,
  }) {
    return Offer(
      object: object ?? this.object,
      address: address ?? this.address,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
      'address': address,
      'price': price,
      'image': image,
    };
  }

  factory Offer.fromMap(Map<String, dynamic> map) {
    return Offer(
      object: map['title'] as String,
      address: map['address'] as String,
      price:map['min_cost']  / 1000000,
      image: map['image'] ?? "assets/images/house1.jpg",
    );
  }

  String toJson() => json.encode(toMap());

  factory Offer.fromJson(String source) => Offer.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Offer(object: $object, address: $address, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant Offer other) {
    if (identical(this, other)) return true;
  
    return 
      other.object == object &&
      other.address == address &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return object.hashCode ^
      address.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
}
