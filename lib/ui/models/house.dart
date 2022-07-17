import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:bavito_mobile_app/ui/models/flats.dart';

class House {
  final String address;
  final String title;

  final List<Flats> flats;

  final double minFlatPrice;

  final DateTime updateDate;

  final int id;

  final ConstructionProgress constructionProgress;

  House({
    required this.address,
    required this.title,
    required this.flats,
    required this.minFlatPrice,
    required this.updateDate,
    required this.constructionProgress,
    required this.id,
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
      title: 'Открытый парк',
      address: 'ул. Ветеранов, Краснодар, Краснодарский край',
      flats: _offers,
      constructionProgress: ConstructionProgress.blank(),
      minFlatPrice: 5.8,
      updateDate: DateTime.now(),
      id: 1,
    );
  }

  House copyWith(
      {String? address, String? title, List<Flats>? flats, double? minFlatPrice, DateTime? updateDate, ConstructionProgress? constructionProgress, int? id}) {
    return House(
      address: address ?? this.address,
      title: title ?? this.title,
      flats: flats ?? this.flats,
      minFlatPrice: minFlatPrice ?? this.minFlatPrice,
      updateDate: updateDate ?? this.updateDate,
      constructionProgress: constructionProgress ?? this.constructionProgress,
      id: id ?? this.id,
    );
  }

  @override
  String toString() {
    return 'House(address: $address, title: $title, flats: $flats, minFlatPrice: $minFlatPrice, updateDate: $updateDate, constructionProgress: $constructionProgress)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is House &&
        other.address == address &&
        other.title == title &&
        listEquals(other.flats, flats) &&
        other.minFlatPrice == minFlatPrice &&
        other.updateDate == updateDate &&
        other.constructionProgress == constructionProgress;
  }

  @override
  int get hashCode {
    return address.hashCode ^ title.hashCode ^ flats.hashCode ^ minFlatPrice.hashCode ^ updateDate.hashCode ^ constructionProgress.hashCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'title': title,
      'flats': flats.map((x) => x.toMap()).toList(),
      'min_flat_price': minFlatPrice,
      'updated_at': updateDate.millisecondsSinceEpoch,
      'id': id,
      //'constructionProgress': constructionProgress.toMap(),
    };
  }

  factory House.fromMap(Map<String, dynamic> map) {
    return House(
      address: map['address'] ?? '',
      title: map['title'] ?? '',
      flats: List<Flats>.from(map['flats']?.map((x) => Flats.fromMap(x))),
      minFlatPrice: (map['min_cost'] ?? 0.0) / 1000000,
      updateDate: DateTime.fromMillisecondsSinceEpoch(map['updated_at'] * 1000),
      constructionProgress: ConstructionProgress.blank(),
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory House.fromJson(String source) => House.fromMap(json.decode(source));
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
