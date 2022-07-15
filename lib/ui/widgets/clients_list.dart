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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'КЛИЕНТЫ',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 15),
        ..._buildList(context),
      ],
    );
  }

  List<Widget> _buildList(BuildContext context) {
    List<Widget> widgetList = [];
    for (Client client in clients) {
      widgetList.add(
        GestureDetector(
          onTap: () {
            Provider.of<ClientService>(context, listen: false).client = client;
            context.router.push(const ClientPageRoute());
          },
          child: Text(
            '${client.surname} ${client.name} ${client.patronymic}',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      );
      widgetList.add(
        Divider(
          color: Colors.grey[300],
          height: 25,
          thickness: 1,
        ),
      );
    }
    return widgetList;
  }
}
