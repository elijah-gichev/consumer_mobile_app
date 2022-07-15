import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:bavito_mobile_app/ui/widgets/clients_list.dart';
import 'package:bavito_mobile_app/ui/widgets/search_field.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  final List<Client> _clients = [
    Client(
      surname: 'Григорьев',
      name: 'Андрей',
      patronymic: 'Максимович',
      phone: '+7 (909) 506-05-32',
    ),
    Client(
      surname: 'Иванов',
      name: 'Иван',
      patronymic: 'Иванович',
      phone: '+7 (909) 506-05-32',
    ),
  ];
  List<Client> _filteredClients = [];

  final TextEditingController _searchController = TextEditingController();

  void _searchClients() {
    String query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      _filteredClients = _clients.where(
        (Client client) {
          String fullName =
              '${client.surname} ${client.name} ${client.patronymic}';
          return fullName.toLowerCase().contains(query);
        },
      ).toList();
    } else {
      _filteredClients = _clients;
    }
    setState(() {});
  }

  @override
  void initState() {
    _searchController.addListener(_searchClients);
    _filteredClients = _clients;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(title: 'Клиенты'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchField(controller: _searchController),
                const SizedBox(height: 20),
                ClientsList(clients: _filteredClients),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
