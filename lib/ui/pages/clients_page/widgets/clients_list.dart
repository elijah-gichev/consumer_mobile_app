import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:flutter/material.dart';

class ClientsList extends StatelessWidget {
  final List<Client> clients;

  const ClientsList({Key? key, required this.clients}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: clients.length,
      itemBuilder: ((context, index) {
        final client = clients[index];
        return GestureDetector(
            onTap: () {
              //context.router.push(ClientPageRoute(client: client));
            },
            child: Column(
              children: [
                Text(
                  '${client.surname} ${client.name} ${client.patronymic}',
                  style: const TextStyle(fontSize: 18),
                ),
                const Divider(),
              ],
            ));
      }),
    );
  }
}
