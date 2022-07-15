import 'package:bavito_mobile_app/services/client_service.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/ui/models/client.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/widgets/client_card.dart';
import 'package:bavito_mobile_app/ui/widgets/requests_list.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final Client _client = Client.blank();
  final List<Request> _requests = [
    Request(
      location: 'пос. Янтарный, пос. Камышеваха',
      minPrice: '15 млн',
      maxPrice: '25 млн',
      action: 'Купить',
      object: 'дом',
    ),
    Request(
      location: 'Кировский, Ленинский, Пролетарский',
      minPrice: '25 тыс',
      maxPrice: '40 тыс',
      action: 'Снять',
      object: 'квартиру',
    ),
    Request(
      location: 'Кировский, Ленинский, Пролетарский',
      minPrice: '25 тыс',
      maxPrice: '40 тыс',
      action: 'Снять',
      object: 'квартиру',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(buttonLabel: 'Клиенты', title: 'Клиент'),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  ClientCard(client: _client),
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
