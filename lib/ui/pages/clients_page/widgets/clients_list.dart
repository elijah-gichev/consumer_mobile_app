import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/services/client_service.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClientsList extends StatelessWidget {
  final List<Client> clients;

  const ClientsList({Key? key, required this.clients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clients.length,
      itemBuilder: ((context, index) {
        final client = clients[index];
        return GestureDetector(
          onTap: () {
            Provider.of<ClientService>(context, listen: false).client = client;
            context.router.push(const ClientPageRoute());
          },
          child: Text(
            '${client.surname} ${client.name} ${client.patronymic}',
            style: const TextStyle(fontSize: 18),
          ),
        );
      }),
    );
  }
}
