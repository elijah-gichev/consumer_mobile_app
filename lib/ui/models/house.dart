import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:bavito_mobile_app/ui/models/flats.dart';

class House {
  final String address;
  final String name;
  final String description;
  final List<Flats> flats;

  final double minFlatPrice;

  final DateTime updateDate;

  final ConstructionProgress constructionProgress;
  House({
    required this.description,
    required this.name,
    required this.address,
    required this.flats,
    required this.constructionProgress,
    required this.minFlatPrice,
    required this.updateDate,
  });

  static final List<Flats> _offers = [
    Flats(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house2.png',
      isDone: true,
    ),
    Flats(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house4.jpg',
      isDone: true,
    ),
    Flats(
      object: 'Дом',
      square: '100',
      floor: '2',
      address: 'Кировский р-н, Очаковская, 39',
      price: 20,
      image: 'assets/images/house5.jpg',
      isDone: true,
    ),
  ];

  factory House.blank() {
    return House(
        description: 'Новый дом на западе Краснодара',
        name: 'Открытый парк',
        address: 'ул. Ветеранов, Краснодар, Краснодарский край',
        flats: _offers,
        constructionProgress: ConstructionProgress.blank(),
        minFlatPrice: 5.8,
        updateDate: DateTime.now());
  }

  House copyWith({
    String? address,
    String? name,
    List<Flats>? flats,
    ConstructionProgress? constructionProgress,
    String? description,
    double? minFlatPrice,
    DateTime? updateDate,
  }) {
    return House(
      description: description ?? this.description,
      name: name ?? this.name,
      address: address ?? this.address,
      flats: flats ?? this.flats,
      constructionProgress: constructionProgress ?? this.constructionProgress,
      minFlatPrice: minFlatPrice ?? this.minFlatPrice,
      updateDate: updateDate ?? this.updateDate,
    );
  }

  @override
  String toString() => 'House(address: $address, flats: $flats, constructionProgress: $constructionProgress)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is House && other.address == address && listEquals(other.flats, flats) && other.constructionProgress == constructionProgress;
  }

  @override
  int get hashCode => address.hashCode ^ flats.hashCode ^ constructionProgress.hashCode;
}

class ConstructionProgress {
  final DateTime dateTime;
  final List<String> images;
  ConstructionProgress({
    required this.dateTime,
    required this.images,
  });

  factory ConstructionProgress.blank() {
    return ConstructionProgress(dateTime: DateTime.now(), images: [
      'assets/images/house1.jpg',
      'assets/images/house2.jpg',
      'assets/images/house2.png',
    ]);
  }

  ConstructionProgress copyWith({
    DateTime? dateTime,
    List<String>? images,
  }) {
    return ConstructionProgress(
      dateTime: dateTime ?? this.dateTime,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dateTime': dateTime.millisecondsSinceEpoch,
      'images': images,
    };
  }

  factory ConstructionProgress.fromMap(Map<String, dynamic> map) {
    return ConstructionProgress(
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      images: List<String>.from(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ConstructionProgress.fromJson(String source) => ConstructionProgress.fromMap(json.decode(source));

  @override
  String toString() => 'ConstructionProgress(dateTime: $dateTime, images: $images)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ConstructionProgress && other.dateTime == dateTime && listEquals(other.images, images);
  }

  @override
  int get hashCode => dateTime.hashCode ^ images.hashCode;
}
