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
}
