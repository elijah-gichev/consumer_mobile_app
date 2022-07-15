import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/common/custom_app_bar.dart';
import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/models/request.dart';
import 'package:bavito_mobile_app/ui/widgets/offers_list.dart';
import 'package:bavito_mobile_app/ui/pages/offers_page/widgets/request_card.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  late final Client _client;
  late final Request _request;
  final List<Offer> _offers = [
    Offer(
        object: 'Дом',
        square: '100',
        floor: '2',
        address: 'Кировский р-н, Очаковская, 39',
        price: '20 млн',
        date: '14.05.2022',
        image: 'https://klike.net/uploads/posts/2020-01/1579858815_2.jpg'),
    Offer(
        object: 'Дом',
        square: '100',
        floor: '2',
        address: 'Кировский р-н, Очаковская, 39',
        price: '20 млн',
        date: '14.05.2022',
        image: 'https://klike.net/uploads/posts/2020-01/1579858815_2.jpg'),
    Offer(
        object: 'Дом',
        square: '100',
        floor: '2',
        address: 'Кировский р-н, Очаковская, 39',
        price: '20 млн',
        date: '14.05.2022',
        image: 'https://klike.net/uploads/posts/2020-01/1579858815_2.jpg'),
  ];

  @override
  void initState() {
    _client = Client.blank();
    _request = Request.blank();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CustomAppBar(
        title: '${_request.action} ${_request.object}',
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RequestCard(
              request: _request,
              client: _client,
            ),
            Row(
              children: [
                const Text(
                  'Предложения',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    context.router.push(DeclarationPageRoute());
                  },
                  child: const Text(
                    'Добавить',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: OffersList(offers: _offers),
            ),
          ],
        ),
      ),
    );
  }
}
