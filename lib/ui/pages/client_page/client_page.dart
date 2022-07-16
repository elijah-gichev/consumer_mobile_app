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
      appBar: const CustomAppBar(
        title: Text(
          'Клиент',
          style: TextStyle(
            fontSize: 15,
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
