import 'dart:convert';

class Service {
  final String title;
  final String description;
  final String imgPath;
  final double rating;
  final double cashback;
  Service({
    required this.title,
    required this.description,
    required this.imgPath,
    required this.rating,
    required this.cashback,
  });

  Service copyWith({
    String? title,
    String? description,
    String? imgPath,
    double? rating,
    double? cashback,
  }) {
    return Service(
      title: title ?? this.title,
      description: description ?? this.description,
      imgPath: imgPath ?? this.imgPath,
      rating: rating ?? this.rating,
      cashback: cashback ?? this.cashback,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'imgPath': imgPath,
      'rating': rating,
      'cashback': cashback,
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imgPath: map['imgPath'] ?? '',
      rating: map['rating']?.toDouble() ?? 0.0,
      cashback: map['cashback']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Service.fromJson(String source) => Service.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Service(title: $title, description: $description, imgPath: $imgPath, rating: $rating, cashback: $cashback)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Service &&
        other.title == title &&
        other.description == description &&
        other.imgPath == imgPath &&
        other.rating == rating &&
        other.cashback == cashback;
  }

  @override
  int get hashCode {
    return title.hashCode ^ description.hashCode ^ imgPath.hashCode ^ rating.hashCode ^ cashback.hashCode;
  }
}
