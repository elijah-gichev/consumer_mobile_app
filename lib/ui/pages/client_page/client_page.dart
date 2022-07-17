import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/pages/client_page/widgets/client_card.dart';
import 'package:bavito_mobile_app/ui/pages/client_page/widgets/requests_list.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  final Client client;
  const ClientPage(this.client, {Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final List<Request> _requests = [
    Request(
      location:
          'Обнаружен повышенный уровень задымления\nвоздуха, включаю систему пожаротушения',
      minPrice: '',
      maxPrice: '',
      action: 'Пожарные датчики',
      object: '',
      iconData: Icons.fire_extinguisher_outlined,
      color: Colors.redAccent,
    ),
    Request(
      location:
          'Отключился один из источников питания,\nперехожу на резервный генератор         ',
      minPrice: '',
      maxPrice: '',
      action: 'Электроснабжение',
      object: '',
      iconData: Icons.electrical_services_outlined,
      color: Colors.yellow[800],
    ),
    Request(
      location:
          'Выявлены неполадки в работе     \nсчётчика отправляю запрос в ЖКХ                ',
      minPrice: '',
      maxPrice: '',
      action: 'Водоснабжение',
      object: '',
      iconData: Icons.water_damage_outlined,
      color: Colors.yellow[800],
    ),
    Request(
      location:
          'Отключён климат-контроль, возможна\nневерная работа устройств контроля температуры',
      minPrice: '',
      maxPrice: '',
      action: 'Теплоснабжение',
      object: '',
      iconData: Icons.thermostat_outlined,
      color: Colors.blueAccent,
    ),
    // Request(
    //   location: 'Обнаружен повышенный уровень задымления',
    //   minPrice: 'воздуха, включаю систему пожаротушения',
    //   maxPrice: '',
    //   action: 'Пожарные датчики',
    //   object: '',
    //   iconData: Icons.fire_extinguisher_outlined,
    //   color: Colors.redAccent,
    // ),
    // Request(
    //   location: 'Отключился один из источников питания,',
    //   minPrice: 'перехожу на резервный генератор',
    //   maxPrice: '',
    //   action: 'Электроснабжение',
    //   object: '',
    //   iconData: Icons.electrical_services_outlined,
    //   color: Colors.yellow[800],
    // ),
    // Request(
    //   location: 'Выявлены неполадки в работе счётчика,',
    //   minPrice: 'отправляю запрос в ЖКХ',
    //   maxPrice: '',
    //   action: 'Водоснабжение',
    //   object: '',
    //   iconData: Icons.water_damage_outlined,
    //   color: Colors.yellow[800],
    // ),
    // Request(
    //   location: 'Отключён климат-контроль, возможна',
    //   minPrice: 'неверная работа устройств контроля температуры',
    //   maxPrice: '',
    //   action: 'Теплоснабжение',
    //   object: '',
    //   iconData: Icons.thermostat_outlined,
    //   color: Colors.blueAccent,
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(
        title: Text(
          'Профиль',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  ClientCard(client: widget.client),
                  RequestsList(requests: _requests),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
