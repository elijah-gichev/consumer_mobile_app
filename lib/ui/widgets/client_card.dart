import 'package:bavito_mobile_app/ui/common/profile_image.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  final Client client;

  const ClientCard({
    Key? key,
    required this.client,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 10),
          ProfileImage(
            height: 100,
            width: 100,
            initials:
                '${client.name.substring(0, 1)}${client.surname.substring(0, 1)}',
          ),
          const SizedBox(height: 20),
          Text(
            '${client.name} ${client.patronymic} ${client.surname.substring(0, 1)}.',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            client.phone,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
