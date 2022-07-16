import 'package:bavito_mobile_app/ui/models/offer.dart';
import 'package:bavito_mobile_app/ui/pages/my_flats/my_flats_card.dart';
import 'package:bavito_mobile_app/ui/pages/offers_page/widgets/list_tile_offer.dart';
import 'package:flutter/material.dart';

class MyFlatsList extends StatelessWidget {
  final List<Offer> offers;

  const MyFlatsList({Key? key, required this.offers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: offers.length,
      itemBuilder: ((context, index) {
        final offer = offers[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: MyFlatsCard(
            offer: offer,
            onTap: () {},
            isDone: true,
          ),
        );
      }),
    );
  }
}
