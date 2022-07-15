import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:bavito_mobile_app/ui/pages/clients_page/widgets/clients_list.dart';
import 'package:bavito_mobile_app/ui/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../delcaration_page/widgets/photo_cards.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  final List<String> urlList  = [
    "assets/images/house1.jpg",
    "assets/images/house2.jpg",
    "assets/images/house3.jpg",
  ];
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
      appBar: const CustomAppBar(
        title: 'Главная',
        isCenterTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PhotoCards(
                  imageUrls: urlList,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
