import 'dart:convert';

class Client {
  final String surname;
  final String name;
  final String patronymic;
  final String phone;

  Client({
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.phone,
  });

  factory Client.blank() {
    return Client(
      surname: 'Ковалев',
      name: 'Дмитрий',
      patronymic: 'Иванович',
      phone: '+79086789012',
    );
  }

  Client copyWith({
    String? surname,
    String? name,
    String? patronymic,
    String? phone,
  }) {
    return Client(
      surname: surname ?? this.surname,
      name: name ?? this.name,
      patronymic: patronymic ?? this.patronymic,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'surname': surname,
      'name': name,
      'patronymic': patronymic,
      'phone': phone,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      surname: map['surname'] ?? '',
      name: map['name'] ?? '',
      patronymic: map['patronymic'] ?? '',
      phone: map['phone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Client.fromJson(String source) => Client.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Client(surname: $surname, name: $name, patronymic: $patronymic, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Client && other.surname == surname && other.name == name && other.patronymic == patronymic && other.phone == phone;
  }

  @override
  int get hashCode {
    return surname.hashCode ^ name.hashCode ^ patronymic.hashCode ^ phone.hashCode;
  }
}
