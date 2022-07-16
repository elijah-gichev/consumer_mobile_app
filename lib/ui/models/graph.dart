import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Graph {
  final String year;
  final num coord;
  Graph({
    required this.year,
    required this.coord,
  });

  Graph copyWith({
    String? year,
    double? coord,
  }) {
    return Graph(
      year: year ?? this.year,
      coord: coord ?? this.coord,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'year': year,
      'coord': coord,
    };
  }

  factory Graph.fromMap(Map<String, dynamic> map) {
    return Graph(
      year: map['year'] as String,
      coord: map['coord'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Graph.fromJson(String source) => Graph.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Graph(year: $year, coord: $coord)';

  @override
  bool operator ==(covariant Graph other) {
    if (identical(this, other)) return true;
  
    return 
      other.year == year &&
      other.coord == coord;
  }

  @override
  int get hashCode => year.hashCode ^ coord.hashCode;
}
